#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""给 new_NetPlayer 补 seek 通路（幂等）。

patch_seek.py 只给 NetPlayer4 加了 seek 覆写；换成 Exo 引擎后走的是
new_NetPlayer，它自己也有一份内部 seekInternal，但**对外**（AIDL 事务 0x15
→ PlayerBinderWrapper → AbsPlayer.seek）需要的是同名覆写方法 seek(I)I。

这里照抄 NetPlayer4 那段的形状，只把落点从 MultiMediaPlayer 换成
MultiExoPlayer（两者都有 public seek(I)I）。
"""
import io
import os
import sys

NET = 'com/phicomm/speaker/player/model/new_NetPlayer.smali'
MARK = 'r1web: seek (exo)'

BODY = (
    "\n"
    "# " + MARK + "\n"
    ".method public declared-synchronized seek(I)I\n"
    "    .registers 5\n"
    "    .param p1, \"whereto\"    # I\n"
    "\n"
    "    .prologue\n"
    "    .line 2000\n"
    "    monitor-enter p0\n"
    "\n"
    "    .line 2001\n"
    "    :try_start_1\n"
    "    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;\n"
    "\n"
    "    .line 2002\n"
    "    .local v1, \"mp\":Lcom/phicomm/speaker/player/model/MultiExoPlayer;\n"
    "    if-eqz v1, :cond_13\n"
    "\n"
    "    .line 2003\n"
    "    invoke-virtual {v1, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->seek(I)I\n"
    "\n"
    "    move-result v0\n"
    "    :try_end_d\n"
    "    .catchall {:try_start_1 .. :try_end_d} :catchall_15\n"
    "\n"
    "    .line 2007\n"
    "    :goto_e\n"
    "    monitor-exit p0\n"
    "\n"
    "    return v0\n"
    "\n"
    "    .line 2005\n"
    "    :cond_13\n"
    "    const/4 v0, -0x1\n"
    "\n"
    "    goto :goto_e\n"
    "\n"
    "    .line 2001\n"
    "    .end local v1    # \"mp\":Lcom/phicomm/speaker/player/model/MultiExoPlayer;\n"
    "    :catchall_15\n"
    "    move-exception v2\n"
    "\n"
    "    monitor-exit p0\n"
    "\n"
    "    throw v2\n"
    ".end method\n"
)


def main():
    root = sys.argv[1] if len(sys.argv) > 1 else '.'
    p = os.path.join(root, NET)
    if not os.path.isfile(p):
        print('缺文件 %s' % p)
        return 1
    s = io.open(p, encoding='utf-8', errors='ignore').read()
    if MARK in s:
        print('  已打过 exo seek，跳过')
        return 0
    if not s.endswith('\n'):
        s += '\n'
    with io.open(p, 'w', encoding='utf-8', newline='\n') as f:
        f.write(s + BODY)
    print('  new_NetPlayer: 已补 seek(I)I -> MultiExoPlayer')
    return 0


if __name__ == '__main__':
    sys.exit(main())
