#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""给 NetPlayerService 换引擎（幂等）。

原厂 onCreate 里只有一条路：
    new PlayerBinderWrapper(new NetPlayer4(ctx))      ← MediaPlayer 版
改成：
    new PlayerBinderWrapper(r1NewPlayer(ctx))         ← 工厂方法内部二选一

★ 为什么不在 onCreate 里直接写 if/else：
  ART 5.1 的 verifier 在两条 new-instance 分支合流到同一个 invoke-direct 时
  会把寄存器判成 Conflict，直接 VerifyError:
    "tried to get class from non-reference register v0 (type=Conflict)"
  ⇒ 把选择逻辑挪进独立静态方法，onCreate 只拿一个 AbsPlayer，零合流。

引擎选择开关（网页「播放引擎」按钮切的就是它）：
    SP r1_engine_mp == 1 ⇒ 原厂 NetPlayer4（MediaPlayer）
    否则               ⇒ new_NetPlayer（ExoPlayer 2.18）
★ 名字是**逆向**命名：flag 名写「哪个被关掉」最容易记错，写「用哪个」最省事。
"""
import io
import os
import sys

TARGET = 'com/phicomm/speaker/player/NetPlayerService.smali'
MARK = '# r1web: exo 引擎'

OLD = '''    .line 21
    new-instance v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/NetPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;-><init>(Lcom/phicomm/speaker/player/model/AbsPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/NetPlayerService;->mPlayer:Lcom/phicomm/speaker/player/PlayerBinderWrapper;
'''

NEW = '''    .line 21
    %s
    new-instance v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-static {p0}, Lcom/phicomm/speaker/player/NetPlayerService;->r1NewPlayer(Landroid/content/Context;)Lcom/phicomm/speaker/player/model/AbsPlayer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;-><init>(Lcom/phicomm/speaker/player/model/AbsPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/NetPlayerService;->mPlayer:Lcom/phicomm/speaker/player/PlayerBinderWrapper;
'''

# 工厂方法：.registers 4 ⇒ v0/v1/v2 局部 + p0=v3
HELPER = '''
# r1web: exo 引擎工厂
#   SP r1_engine_mp == 1 ⇒ 原厂 NetPlayer4（MediaPlayer）
#   否则                 ⇒ new_NetPlayer（ExoPlayer 2.18）
# ★ 用 SP 而不是 files/flag：实测 :NetPlayer 进程里 File.exists() 对主进程刚建的
#   files/engine_mp 恒返回 false（同一个 system uid、canRead=true，主进程读得到，
#   子进程读不到 —— 猜是 SELinux 对 app data 的路径授权差异）。
#   走原厂自己的 SPHelper/PreferenceUtil，两个进程口径天然一致。
# ★ 两个分支各自 return-object，不合流 —— ART 5.1 verifier 不会判 Conflict
.method private static r1NewPlayer(Landroid/content/Context;)Lcom/phicomm/speaker/player/model/AbsPlayer;
    .registers 4

    const-string v1, "r1_engine_mp"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :r1_use_exo

    new-instance v0, Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;-><init>(Landroid/content/Context;)V

    return-object v0

    :r1_use_exo
    new-instance v0, Lcom/phicomm/speaker/player/model/new_NetPlayer;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
'''


def main():
    root = sys.argv[1] if len(sys.argv) > 1 else '.'
    p = os.path.join(root, TARGET)
    if not os.path.isfile(p):
        print('缺文件 %s' % p)
        return 1
    txt = io.open(p, encoding='utf-8', errors='ignore').read()
    if MARK in txt:
        print('  已换过引擎，跳过')
        return 0

    if OLD not in txt:
        print('  !! 锚点没命中（原厂 onCreate 已被改？）')
        return 1
    txt = txt.replace(OLD, NEW % MARK, 1)

    if not txt.endswith('\n'):
        txt += '\n'
    txt += HELPER

    with io.open(p, 'w', encoding='utf-8', newline='\n') as f:
        f.write(txt)
    print('  NetPlayerService: 引擎 -> new_NetPlayer（SP r1_engine_mp=1 切回 MediaPlayer）')
    return 0


if __name__ == '__main__':
    sys.exit(main())
