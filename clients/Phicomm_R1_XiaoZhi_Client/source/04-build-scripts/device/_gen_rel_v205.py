#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""由 build_v205.sh 生成 release 构建脚本 build_rel_V205.sh（device 侧）。

与 _gen_rel_v204.py 同构，只改四处：
  1. 头部说明：基线换成 v1.3.329（jp2 v205）；
  2. 产物名 xiaozhi_Unisound_v205.apk -> XiaoZhi_Unisound_V2.0.5.apk；
  3. javac 之前注入 VERSION=2.0.5，janus 构建完之后还原源码树；
  4. 结尾提示语换成 V2.0.5 的要点。

★ 2026-11-07：V2.0.5（基线 v1.3.329），相对 V2.0.4（v1.3.256）新增：
  有声书/节目全线打通（整本集表缓存、我的节目整批占位、按书续播记忆、
  本地有声书库优先），加上录音链路 ALC/gain 互斥与搭车模式播放流修复。
"""
import io

s = io.open('build_v205.sh', encoding='utf-8').read()

HEAD = """#!/bin/bash
# =============================================================================
#  jp2 RELEASE V2.0.5 —— 与测试版(1.3.x)分开的第二条版本序列。
#
#  基线 = 测试版 v1.3.329（jp2 v205），相对 V2.0.4（v1.3.256）的变化：
#    · 收藏/点歌准确性（v1.3.257~275）：歌手权重高于歌名 + 秒回先过歌手闸；
#      「清空收藏」= 彻底清（连恢复快照一起删）；书不再被当成歌推队列；
#      同名多版本（凡人修仙传有 7 个版本）按主播+版本挑，不再盲挑
#    · 有声书整本集表缓存 + play-first（v1.3.271~275）：点一集先出声，
#      整本枚举转后台；枚举完把收藏里同书各集整本预绑定，2h 缓存不丢
#    · 「我的节目」= 有声书收藏（v1.3.286~307）：整批 /r/prog 占位入列、
#      播到才解析（和音乐收藏的「播到才搜」同款）；尾集播完自动续下一批
#    · 听书记忆（v1.3.308~314）：按书一张小表记「第几集 + 第几秒」（最多 8 本），
#      语音续播从上次那一秒接着播；换书续播不再拿别的书的集号
#    · 下一集/上一集（v1.3.280~285）：以 player 正在播的那一集为基准，
#      队列快路径 + 幂等护栏，手动跳集/网页跳集后都不会错位
#    · 防误触（v1.3.303）：tail-kick 三道门 —— 我们自己刚推过队列的 30s 内、
#      上一曲不是队列末行、书名能在「我的节目」精确命中，才允许「循环回卷」
#    · 本地有声书库优先（v1.3.325~329）：NAS /api/abl/* 有这本书就放本地文件，
#      不走去在线取链；本地集名排进队列时补「第N集 」（标题里已有集号就不加）
#    · 录音链路（v1.3.322~324）：搭车模式（useUscTap）下自动挂常驻播放流；
#      ALC 与固定增益互斥（ALC 开着时固定增益不参与运算，界面置灰）
#  仅在用户明确要求出 release 时才执行本脚本。
#
#  ★ 版本号策略：
#      release 序列 2.0.x   <- 只有本脚本产出，产物名 XiaoZhi_Unisound_V2.0.5.apk
#      测试序列   1.3.x     <- 日常迭代（build_v205.sh 等），只在开发目录流转
#    本脚本在 javac 之前把 XzBootstrap.VERSION 临时改成 2.0.5，
#    janus 构建完立刻还原 —— 源码树永远回到测试序列，两条线不会串。
# =============================================================================
"""
if s.startswith('#!'):
    s = HEAD + s.split('\n', 1)[1]
else:
    s = HEAD + s

n = s.count('xiaozhi_Unisound_v205')
assert n >= 4, 'out name count %d' % n
s = s.replace('xiaozhi_Unisound_v205', 'XiaoZhi_Unisound_V2.0.5')
print('产物改名处数:', n)

MARK = 'echo "== [1/6] javac =="'
assert MARK in s, 'javac anchor'
BS = chr(92) + 'n'          # 让内层 python 源码里是 \\n
INJ = (
    'echo "== [0.9/6] RELEASE 版本号注入：VERSION -> 2.0.5 =="\n'
    '"$PY" - <<\'INJEOF\'\n'
    'import io, os, re\n'
    'p = \'v2src/cn/workbuddy/r1client/XzBootstrap.java\'\n'
    'src = io.open(p, encoding=\'utf-8\').read()\n'
    'if os.path.exists(\'_VERSION_dev.bak\'):\n'
    '    print(\'  [warn] 已有 _VERSION_dev.bak（上次构建没走到还原），沿用旧备份、不覆盖\')\n'
    'else:\n'
    '    io.open(\'_VERSION_dev.bak\', \'w\', encoding=\'utf-8\', newline=' + "'" + BS + "'" + ').write(src)\n'
    's = re.sub(r\'public static final String VERSION = "[^"]*"\',\n'
    '           \'public static final String VERSION = "2.0.5"\', src)\n'
    'assert \'VERSION = "2.0.5"\' in s, \'release 版本注入失败\'\n'
    'io.open(p, \'w\', encoding=\'utf-8\', newline=' + "'" + BS + "'" + ').write(s)\n'
    'print(\'  VERSION -> 2.0.5  (release 序列；测试序列 1.3.x 保留在源码树)\')\n'
    'INJEOF\n\n'
)
s = s.replace(MARK, INJ + MARK, 1)

s = s.rstrip('\n') + (
    '\n\necho "== [7/6] 源码树版本号还原（回到测试序列 1.3.x） =="\n'
    '"$PY" - <<\'RSTEOF\'\n'
    'import io, os\n'
    'p = \'v2src/cn/workbuddy/r1client/XzBootstrap.java\'\n'
    "io.open(p, 'w', encoding='utf-8', newline='" + BS + "').write(\n"
    "    io.open('_VERSION_dev.bak', encoding='utf-8').read())\n"
    'os.remove(\'_VERSION_dev.bak\')\n'
    'print(\'  源码树 VERSION 已还原为测试序列\')\n'
    'RSTEOF\n\n'
    'echo "RELEASE DONE: XiaoZhi_Unisound_V2.0.5.apk"\n'
    'echo "  本版新增：有声书整本集表缓存 / play-first、我的节目整批占位、"\n'
    'echo "  按书续播记忆（集+秒）、下一集/上一集以 player 实播为准、"\n'
    'echo "  防误触 tail-kick 三道门、本地有声书库优先（走 NAS 本地文件）、"\n'
    'echo "  ALC 与固定增益互斥 + 搭车模式常驻播放流"\n'
)

io.open('build_rel_V205.sh', 'w', encoding='utf-8', newline='\n').write(s)
print('written build_rel_V205.sh')
