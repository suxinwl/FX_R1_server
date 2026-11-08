#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""由 build_pv81.sh 生成 player release 构建脚本 build_rel_V205.sh。

与 _gen_rel_v204.py 同构，只改四处：
  1. 头部说明：基线换成 pl-1.6.148（pv81）；
  2. 中间产物编号 V: pv81 -> pv205；
  3. 产物名 xiaozhi_EchoService_pv81.apk -> XiaoZhi_EchoService_V2.0.5.apk；
  4. javac 之前把 Boot.VER 注入成 pl-2.0.5，构建完立刻还原源码树。
"""
import io

s = io.open('build_pv81.sh', encoding='utf-8').read()

HEAD = """#!/bin/bash
# =============================================================================
#  jp2-player RELEASE V2.0.5 —— 与测试版(pl-1.6.x)分开的第二条版本序列。
#
#  基线 = 测试版 pl-1.6.148（pv81），相对 V2.0.4（pl-1.6.95 / pv72）的变化：
#    · 有声书/节目页（pl-1.6.101~127）：新增「节目」一栏 —— 搜索只列书名，
#      点书名弹窗选集（首行=最近播放、带集数搜索）；点一集就整批占位入列，
#      播到才解析（和音乐收藏的「播到才搜」同款）
#    · 「我的节目」= 有声书收藏（pl-1.6.121/127）：收藏当前在听的书，
#      整批 /r/prog?aid=&ep= 占位，解析不到绝不把「非音频」交给播放器
#    · 下一首/上一首在播书时自动变「下一集/上一集」（pl-1.6.108/110）：
#      网页上直接转 ab_next/ab_prev，后台转发立即返回，不卡界面
#    · 秒数续播（pl-1.6.120/129/130/131）：等切到目标集且 prepared 之后再拖，
#      并带守卫 —— 任何一次点播都作废上一单续播，不会把新歌拖到旧秒数
#    · 歌单导入异步化（pl-1.6.104）：按钮实时显示「导入中 X/N」，不再假死
#    · 收藏显示自定义原名开关（pl-1.6.97/98）：列表可切「原名 / 匹配名」
#    · 本地有声书库（pl-1.6.133~141）：书列表缓存 + 扫盘指纹比对、整批入列
#      （一次 300 集）、队列 itemId 用 abl_ 前缀不串到在线书、来源标「📖 本地节目」
#    · 节目/书单三栏封顶（pl-1.6.143~145）：高度 236px 框内上下滑，不再把卡片撑长
#    · 本地书队列标题补「第N集 」（pl-1.6.146）：与 device 侧 abEpTitle 同一套规则
#    · 搜索框删空即回全列表（pl-1.6.140/147）：看「视图词」而不是按钮状态，
#      迟到的响应按词作废，不会再画回旧结果
#    · 页面缓存（pl-1.6.148）：/ 改 no-cache + ETag（304 零字节）；
#      「页面已过时」横幅点一下先注销旧 Service Worker 再强刷
#  仅在用户明确要求出 release 时才执行本脚本。
#
#  ★ 版本号策略：
#      release 序列 pl-2.0.x   <- 只有本脚本产出，产物名 XiaoZhi_EchoService_V2.0.5.apk
#      测试序列   pl-1.6.x     <- 日常迭代（build_pv81.sh 等），只在开发目录流转
#    本脚本在 javac 之前把 Boot.VER 临时改成 pl-2.0.5，
#    d8 构建完立刻还原 —— 源码树永远回到测试序列，两条线不会串。
# =============================================================================
"""
if s.startswith('#!'):
    s = HEAD + s.split('\n', 1)[1]
else:
    s = HEAD + s

# 1) 中间产物编号隔离
assert 'V=pv81\n' in s, 'V anchor'
s = s.replace('V=pv81\n', 'V=pv205\n', 1)

# 2) 产物名
old_out = 'OUT="xiaozhi_EchoService_$V.apk"'
new_out = 'OUT="XiaoZhi_EchoService_V2.0.5.apk"'
assert old_out in s, 'OUT anchor'
s = s.replace(old_out, new_out, 1)

# 3) javac 之前注入 + 之后还原
MARK = 'echo "=========== [1/8] 静态自检 ==========="'
assert MARK in s, 'javac anchor'
BS = chr(92) + 'n'
INJ = (
    'echo "=========== [0.5/8] RELEASE 版本号注入：VER -> pl-2.0.5 ==========="\n'
    '"$PY" - <<\'INJEOF\'\n'
    'import io, os, re\n'
    'p = \'plsrc/cn/workbuddy/r1web/Boot.java\'\n'
    'src = io.open(p, encoding=\'utf-8\').read()\n'
    'if os.path.exists(\'_VER_dev.bak\'):\n'
    '    print(\'  [warn] 已有 _VER_dev.bak（上次构建没走到还原），沿用旧备份、不覆盖\')\n'
    'else:\n'
    "    io.open('_VER_dev.bak', 'w', encoding='utf-8', newline='" + BS + "').write(src)\n"
    's = re.sub(r\'public static final String VER = "[^"]*"\',\n'
    '           \'public static final String VER = "pl-2.0.5"\', src)\n'
    'assert \'VER = "pl-2.0.5"\' in s, \'release 版本注入失败\'\n'
    "io.open(p, 'w', encoding='utf-8', newline='" + BS + "').write(s)\n"
    'print("  VER -> pl-2.0.5  (release 序列；测试序列 pl-1.6.x 保留在源码树)")\n'
    'INJEOF\n\n'
)
s = s.replace(MARK, INJ + MARK, 1)

s = s.rstrip('\n') + (
    '\n\necho "=========== [9/8] 源码树版本号还原（回到测试序列 pl-1.6.x） ==========="\n'
    '"$PY" - <<\'RSTEOF\'\n'
    'import io, os\n'
    'p = \'plsrc/cn/workbuddy/r1web/Boot.java\'\n'
    "io.open(p, 'w', encoding='utf-8', newline='" + BS + "').write(\n"
    "    io.open('_VER_dev.bak', encoding='utf-8').read())\n"
    'os.remove(\'_VER_dev.bak\')\n'
    'print("  源码树 VER 已还原为测试序列")\n'
    'RSTEOF\n\n'
    'echo "RELEASE DONE: XiaoZhi_EchoService_V2.0.5.apk"\n'
    'echo "  本版新增：节目（有声书）页与我的节目、整批占位入列、秒数续播、"\n'
    'echo "  下一首/上一首在播书时变集、本地有声书库（整批入列 + 缓存 + 标签）、"\n'
    'echo "  三栏封顶、本地书队列标题带集号、搜索删空即回列表、"\n'
    'echo "  页面 no-cache + ETag 与「页面已过时」一键强刷"\n'
)

io.open('build_rel_V205.sh', 'w', encoding='utf-8', newline='\n').write(s)
print('written build_rel_V205.sh')
