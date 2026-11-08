#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""把 smali_echo（原厂树）派生成 smali_exo（原厂 + ExoPlayer 2.18）。

幂等：可重复运行。
步骤：
  1. smali_exo 不存在则从 smali_echo 复制
  2. 删 smali_exo 里的 exomedia / exoplayer2（旧 2.6.0 + 88 类 exomedia）
  3. 按 need2.txt 的 ADD/REPLACE 从小飞树复制
  4. com/xiaofei/server 写桩（只留 MultiExoPlayer 用到的两个静态方法）
  5. PlaySong 换小飞版（多 albumUrl 字段）
  6. EchoService 补 ver:I 字段
"""
import os
import re
import shutil
import sys

R1 = os.path.dirname(os.path.dirname(os.path.abspath(__file__))).replace(os.sep, '/')
XF = R1 + '/_diag/xf_smali'
ECHO = R1 + '/janus_player2/smali_echo'
EXO = R1 + '/janus_player2/smali_exo'
NEED = R1 + '/_diag/need2.txt'

DELETE = [
    'com/phicomm/speaker/player/exomedia',
    'com/google/android/exoplayer2',
]


def rm_tree(rel):
    p = os.path.join(EXO, rel)
    if os.path.isdir(p):
        shutil.rmtree(p)
        return True
    return False


def main():
    # 1. 派生
    if not os.path.isdir(EXO):
        print('[1] 复制 smali_echo -> smali_exo ...', flush=True)
        shutil.copytree(ECHO, EXO)
    else:
        print('[1] smali_exo 已存在，跳过复制（如要重建请先删掉它）')

    # 2. 删旧引擎
    print('[2] 删除旧 exomedia / exoplayer2')
    for d in DELETE:
        print('    %s %s' % ('删' if rm_tree(d) else '无', d))

    # 3. 搬类
    print('[3] 按清单搬类')
    cnt = {'ADD': 0, 'REPLACE': 0, 'skip_stub': 0, 'missing': 0}
    with open(NEED, encoding='utf-8') as f:
        for line in f:
            line = line.rstrip('\n')
            if not line:
                continue
            tag, rel = line.split('\t')
            if rel.startswith(('com/xiaofei/', 'fi/iki/', 'com/android/commands/')):
                cnt['skip_stub'] += 1
                continue
            src = os.path.join(XF, rel + '.smali')
            dst = os.path.join(EXO, rel + '.smali')
            if not os.path.isfile(src):
                cnt['missing'] += 1
                print('    !! 缺源文件 %s' % rel)
                continue
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            shutil.copy2(src, dst)
            cnt[tag] += 1
    print('    ADD %d / REPLACE %d / 跳过桩包 %d / 缺源 %d' % (
        cnt['ADD'], cnt['REPLACE'], cnt['skip_stub'], cnt['missing']))

    # 4. com/xiaofei/server 桩
    stub_dir = os.path.join(EXO, 'com/xiaofei')
    os.makedirs(stub_dir, exist_ok=True)
    stub = os.path.join(stub_dir, 'server.smali')
    stub_src = '''.class public Lcom/xiaofei/server;
.super Ljava/lang/Object;


# direct methods
# 桩：小飞的 MultiExoPlayer 只用到这两个静态方法。
# exists_FLAC 返回 false ⇒ 不注册 FLAC 解码器（我们没有 libflacJNI.so 的装载路径）。
.method public static exists_FLAC()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static get_unisound_SharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "unisound"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
'''
    with open(stub, 'w', encoding='utf-8', newline='\n') as f:
        f.write(stub_src)
    print('[4] 写入 com/xiaofei/server 桩')

    # 5. PlaySong 换小飞版
    src = os.path.join(XF, 'com/phicomm/speaker/player/model/PlaySong.smali')
    dst = os.path.join(EXO, 'com/phicomm/speaker/player/model/PlaySong.smali')
    shutil.copy2(src, dst)
    print('[5] PlaySong 已换小飞版（多 albumUrl）')

    # 6. EchoService 补 ver 字段
    p = os.path.join(EXO, 'com/phicomm/speaker/player/EchoService.smali')
    txt = open(p, encoding='utf-8', errors='ignore').read()
    if 'EchoService;->ver' in txt or re.search(r'^\.field.*\bver:I', txt, re.M):
        print('[6] EchoService.ver 已存在，跳过')
    else:
        # 插在第一个 .field 之前；若没有 .field 则插在 class/super 之后
        marker = '\n.field '
        i = txt.find(marker)
        add = '\n.field public static ver:I = 0x75a\n'
        if i < 0:
            m = re.search(r'^\.super .*$', txt, re.M)
            i = m.end()
            txt = txt[:i] + add + txt[i:]
        else:
            txt = txt[:i] + add + txt[i:]
        with open(p, 'w', encoding='utf-8', newline='\n') as f:
            f.write(txt)
        print('[6] EchoService 补 ver:I = 0x75a')

    # 汇总
    n = 0
    for dp, dn, fn in os.walk(EXO):
        n += sum(1 for f in fn if f.endswith('.smali'))
    print('\n完成：smali_exo 共 %d 个 smali' % n)


if __name__ == '__main__':
    main()
