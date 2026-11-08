@echo off
chcp 936>nul 2>nul
setlocal ENABLEDELAYEDEXPANSION
title R1 专用小智 一键安装工具 V2.0.5
cd /d "%~dp0"

rem  用法：
rem    双击运行                       -> 交互菜单
rem    一键安装.bat <音箱IP> <动作号> -> 免交互直接执行（动作号见菜单）
rem    例：一键安装.bat 192.168.2.5:5555 1                 一键安装
rem        一键安装.bat 192.168.2.5:5555 5 192.168.2.189   填本地服务器地址

set "ADB=%~dp0adb.exe"
if not exist "%ADB%" (
  where adb.exe >nul 2>nul
  if errorlevel 1 (
    color 04
    echo.
    echo  没找到 adb.exe！
    echo  请把 adb.exe / AdbWinApi.dll / AdbWinUsbApi.dll 和本 bat 放在同一个目录下。
    echo  （或者把 platform-tools 加到 PATH 里。）
    echo.
    pause
    exit /b 1
  )
  set "ADB=adb.exe"
)
set "DEFIP=192.168.2.5:5555"
set "ARGIP=%~1"
set "ARGDO=%~2"
set "ARGSRV=%~3"
set "JP2="
set "PLYR="
set "PURE="
set "DEVIP="
set "ip="
set "type="

echo.
echo  ==========================================================
echo     斐讯 R1 专用小智  ——  一键安装工具   V2.0.5
echo  ==========================================================
echo   把「替换版小智」和「so 宿主」装进音箱，
echo   保留原厂四麦的波束成形 / 降噪 / AGC / AEC。
echo.

for %%f in ("XiaoZhi_Unisound_V*.apk") do set "JP2=%%~nxf"
if not defined JP2 for %%f in ("apps\XiaoZhi_Unisound_V*.apk") do set "JP2=apps\%%~nxf"
for %%f in ("XiaoZhi_EchoService_V*.apk") do set "PLYR=%%~nxf"
if not defined PLYR for %%f in ("apps\XiaoZhi_EchoService_V*.apk") do set "PLYR=apps\%%~nxf"
for %%f in ("XiaoZhi_SoHost_V*.apk") do set "PURE=%%~nxf"
if not defined PURE for %%f in ("apps\XiaoZhi_SoHost_V*.apk") do set "PURE=apps\%%~nxf"

echo  检测到主包(小智本体) : %JP2%
echo  检测到控制台包       : %PLYR%
echo  检测到so宿主         : %PURE%
echo.
if not defined JP2 echo  [警告] 没找到 XiaoZhi_Unisound_V*.apk，请放到本目录或 apps\ 下。
if not defined PLYR echo  [警告] 没找到 XiaoZhi_EchoService_V*.apk，请放到本目录或 apps\ 下。
if not defined PURE echo  [警告] 没找到 XiaoZhi_SoHost_V*.apk，请放到本目录或 apps\ 下。

:connect
echo.
echo  ------------ 第一步：连接音箱 ------------
if defined ARGIP (
  set "ip=%ARGIP%"
) else (
  echo  请输入音箱 IP 和端口（例：192.168.2.5:5555）
  set /p "ip=  直接回车用 %DEFIP%，用 USB 数据线请输入 usb : "
  if not defined ip set "ip=%DEFIP%"
)
if /i "%ip%"=="usb" (
  set "type=-d"
) else (
  set "type=-s %ip%"
)
echo  正在连接 %ip% ...
if /i not "%ip%"=="usb" "%ADB%" connect %ip% >nul <nul
"%ADB%" %type% shell ls >nul 2>nul <nul
if errorlevel 1 (
  color 04
  echo.
  echo  连接失败！请检查：音箱已开机 / adb 网络调试已开 / IP 与端口写对了 / 同一网段。
  echo.
  if defined ARGIP exit /b 2
  pause
  color 0a
  goto connect
)
color 0a
echo  连接成功。
echo.

if /i "%ip%"=="usb" (
  "%ADB%" %type% shell getprop dhcp.wlan0.ipaddress > "%TEMP%\r1_ip.txt" <nul
  set /p DEVIP=< "%TEMP%\r1_ip.txt"
) else (
  for /f "tokens=1 delims=:" %%a in ("%ip%") do set "DEVIP=%%a"
)
"%ADB%" %type% shell getprop ro.build.version.incremental > "%TEMP%\r1_v.txt" <nul
set /p fwv=< "%TEMP%\r1_v.txt"
"%ADB%" %type% shell getprop ro.product.model > "%TEMP%\r1_m.txt" <nul
set /p fwm=< "%TEMP%\r1_m.txt"
"%ADB%" %type% shell getprop ro.serialno > "%TEMP%\r1_s.txt" <nul
set /p fws=< "%TEMP%\r1_s.txt"
echo  型号: %fwm%    固件: %fwv%    SN: %fws%
echo  音箱 IP: %DEVIP%    （Web 控制台: http://%DEVIP%:8080/ ）
echo.

set "FWOK=0"
set "FW4=%fwv:~0,4%"
if "%FW4%"=="3448" set "FWOK=1"
if "%FWOK%"=="0" (
  color 06
  echo  ----------------------------------------------------------
  echo   [固件版本不符，安装功能已锁定]
  echo     当前固件版本：%fwv%
  echo     本程序只支持 3448 固件，其它版本装上可能出现：
  echo     唤不醒 / 没声音 / 打不开 web 控制台（8080）。
  echo.
  echo     → 请先把音箱固件升级到 3448 版本（各 R1 工具包通常自带固件），
  echo       升级完重新运行本程序。
  echo     → 当前只能使用 [4]~[9] 这些非安装功能。
  echo  ----------------------------------------------------------
  echo.
  if not defined ARGDO pause
  color 0a
)

:menu
echo.
echo  ==================== 菜单 ====================
echo   [1] 一键安装（so宿主 + 主包 + 控制台包 + 拉起）  推荐
echo   [2] 只装 / 重装 so 宿主   （XiaoZhi_SoHost_V2.0.1.apk）
echo   [3] 只装 / 升级 主包     （XiaoZhi_Unisound_V2.0.5.apk）
echo   [4] 只装 / 升级 控制台包 （XiaoZhi_EchoService_V2.0.5.apk）
echo   [5] 打开 Web 控制台
echo   [6] 设置服务器地址（官方 / 本地自建）
echo   [7] 重启小智      [8] 重启音箱
echo   [9] 查看运行日志  [s] adb shell
echo   [0] 退出
echo  =============================================
if defined ARGDO (
  set "sel=%ARGDO%"
  echo  命令行模式，自动执行 [!sel!]
) else (
  set "sel="
  set /p "sel=请输入编号后回车 : "
)
if /i "%sel%"=="1" goto do_all
if /i "%sel%"=="2" goto do_pure
if /i "%sel%"=="3" goto do_jp2
if /i "%sel%"=="4" goto do_pl
if /i "%sel%"=="5" goto do_web
if /i "%sel%"=="6" goto do_server
if /i "%sel%"=="7" goto do_restart
if /i "%sel%"=="8" goto do_reboot
if /i "%sel%"=="9" goto do_log
if /i "%sel%"=="s" goto do_shell
if /i "%sel%"=="0" goto bye
echo  输入无效，请输入 0~9 的编号。
if defined ARGDO exit /b 3
goto menu

:lockchk
if "%FWOK%"=="1" exit /b 0
color 04
echo.
echo  ############ 拒绝安装 ############
echo   当前固件版本 %fwv% 不是 3448，本程序不支持在这个版本上安装。
echo   请先把音箱固件升级到 3448（各 R1 工具包通常自带固件），再回来安装。
echo  ##################################
echo.
if not defined ARGDO pause
color 0a
exit /b 1

:do_all
echo.
echo  ============== 开始装机（约 2 分钟）==============
call :lockchk
if errorlevel 1 goto failop
call :install_pure
if errorlevel 1 goto failop
call :install_jp2
if errorlevel 1 goto failop
call :install_pl
if errorlevel 1 goto failop
call :start_app
call :start_pl
call :waitweb
if errorlevel 1 goto failop
echo.
echo  ============== 装机完成 ==============
echo  Web 控制台：http://%DEVIP%:8080/
echo.
echo  下一步：浏览器打开控制台 → 顶部「激活」卡片取 6 位激活码 → 到小智服务端绑定。
echo  用本地自建服务器的，请再用菜单 [6] 填一次服务器地址（重装会清空 OTA 地址）。
echo.
if not defined ARGDO (
  set "ow="
  set /p "ow=现在打开 Web 控制台？(y/n) : "
  if /i "!ow!"=="y" start http://%DEVIP%:8080/
  pause
)
goto done

:do_pure
echo.
call :lockchk
if errorlevel 1 goto failop
call :install_pure
goto done

:do_jp2
echo.
call :lockchk
if errorlevel 1 goto failop
call :install_jp2
if errorlevel 1 goto failop
call :install_pl
if errorlevel 1 goto failop
call :start_app
call :start_pl
call :waitweb
if errorlevel 1 goto failop
goto done

:do_pl
echo.
call :lockchk
if errorlevel 1 goto failop
call :install_pl
if errorlevel 1 goto failop
call :start_pl
call :waitweb
goto done

:do_web
start http://%DEVIP%:8080/
goto menu

:do_restart
echo.
echo  重启小智（device 进程重启，配置与开关都保留）...
"%ADB%" %type% shell am force-stop com.phicomm.speaker.device <nul
"%ADB%" %type% shell am start -n com.phicomm.speaker.device/.ui.MainActivity <nul
echo  已重启，等 10 秒后刷新 Web 控制台。
goto done

:do_reboot
echo.
echo  正在重启音箱 ...
"%ADB%" %type% reboot <nul
goto done

:do_log
echo.
echo  ------------ 最近的运行日志 ------------
"%ADB%" %type% shell "run-as com.phicomm.speaker.device cat files/r1client.log" <nul
echo  ----------------------------------------
goto done

:do_shell
echo.
echo  进入 adb shell（输入 exit 回车返回本菜单）
"%ADB%" %type% shell
goto menu

:failop
echo.
echo  上一步失败了，结束。
goto done

:done
if defined ARGDO goto bye
pause
goto menu

:bye
echo.
echo  操作结束。唤醒词是「小智小智」，喊完等「嘀」一声再说话。
if not defined ARGDO pause
exit /b 0

rem ==================== 子过程 ====================

:waitweb
REM =====================================================================
REM  等 Web 控制台真正就绪再往下走。
REM
REM  为什么要它（2026-10-18 用户反馈「全新装机后打不开网页，重启才行」）：
REM    player 进程冷启动时，注入层 Boot.attach() 先起后台线程 sleep 3500ms
REM    才 WebSrv.start() 绑 8080；首次装机还要从 base.apk 盲区抠
REM    libr1opus.so 写进 files/、初始化 opus 与 HAL，整体更慢。
REM    老脚本 startservice 一返回就提示「现在打开控制台？」，
REM    此时 8080 还没监听，浏览器报「无法访问」，用户只好重启音箱。
REM
REM  判据：读设备内核的 TCP 监听表，8080 = 十六进制 1F90；
REM        IPv6（/proc/net/tcp6）和 IPv4（/proc/net/tcp）都看，
REM        且必须同时满足「远端地址全零」+「状态 0A（LISTEN）」，
REM        否则一条 ESTABLISHED 的探测连接就会误判成已就绪。
REM =====================================================================
echo.
echo  等待控制台就绪（正常 2~5 秒，首次冷启动约 15~40 秒）...
set "WT=0"

:waitweb_loop
"%ADB%" %type% shell cat /proc/net/tcp6 > "%TEMP%\r1_tcp6.txt" 2>nul <nul
findstr /r /c:":1F90 00000000000000000000000000000000:0000 0A" "%TEMP%\r1_tcp6.txt" >nul 2>&1
if not errorlevel 1 goto waitweb_ok
"%ADB%" %type% shell cat /proc/net/tcp > "%TEMP%\r1_tcp.txt" 2>nul <nul
findstr /r /c:":1F90 00000000:0000 0A" "%TEMP%\r1_tcp.txt" >nul 2>&1
if not errorlevel 1 goto waitweb_ok

ping -n 4 127.0.0.1 >nul
set /a WT+=3
if !WT! GEQ 60 (
  echo.
  echo  [!] 等了 60 秒控制台还没起来。先别急着断电，按顺序排查：
  echo       1. 菜单 [9] 看一眼日志，确认 player 起没起来
  echo       2. 菜单 [4] 单独重装一次控制台包
  echo       3. 还是不行再菜单 [8] 重启音箱
  exit /b 1
)
echo    ...已等 !WT! 秒
goto waitweb_loop

:waitweb_ok
echo  控制台已就绪（等了 !WT! 秒）。
exit /b 0

:install_pure
if not defined PURE (
  color 04
  echo  没找到 XiaoZhi_SoHost_V*.apk！
  pause
  color 0a
  exit /b 1
)
echo  [1/3] 卸载旧的 so 宿主（第一次装报 Failure 属正常）
"%ADB%" %type% shell "sh -c 'pm uninstall cn.workbuddy.r1client > /data/local/tmp/un.txt 2>&1'" <nul
"%ADB%" %type% shell "sh -c 'pm unhide cn.workbuddy.r1client > /dev/null 2>&1'" <nul
echo  [2/3] 上传 %PURE%
call :pushfile "%PURE%" r1pure.apk
if errorlevel 1 exit /b 1
echo  [3/3] 安装 so 宿主
call :pmi r1pure.apk ""
if errorlevel 1 exit /b 1
echo  so 宿主 OK
exit /b 0

:install_jp2
if not defined JP2 (
  color 04
  echo  没找到 XiaoZhi_Unisound_V*.apk！
  pause
  color 0a
  exit /b 1
)
echo  停止旧的 r1client 进程（它占着麦克风）
"%ADB%" %type% shell am force-stop cn.workbuddy.r1client <nul
echo  [1/2] 上传 %JP2%
call :pushfile "%JP2%" jp2.apk
if errorlevel 1 exit /b 1
echo  [2/2] 安装主包
call :pmi jp2.apk "-r"
if errorlevel 1 exit /b 1
echo  主包 OK
exit /b 0

:start_app
echo  拉起小智 ...
"%ADB%" %type% shell am force-stop cn.workbuddy.r1client <nul
"%ADB%" %type% shell am start -n com.phicomm.speaker.device/.ui.MainActivity <nul
echo  已拉起。等 10~15 秒后访问 http://%DEVIP%:8080/
exit /b 0

:install_pl
if not defined PLYR (
  color 04
  echo  没找到 XiaoZhi_EchoService_V*.apk！
  pause
  color 0a
  exit /b 1
)
echo  [1/2] 上传 %PLYR%
call :pushfile "%PLYR%" echo.apk
if errorlevel 1 exit /b 1
echo  [2/2] 安装控制台包
call :pmi echo.apk "-r"
if errorlevel 1 exit /b 1
echo  控制台包 OK
exit /b 0

:start_pl
echo  拉起控制台（player） ...
"%ADB%" %type% shell am startservice -n com.phicomm.speaker.player/.EchoService <nul
exit /b 0

:pushfile
set "LF=%~1"
set "RN=%~2"
set "LZ=%~z1"
set "RS="
"%ADB%" %type% shell ls -l /data/local/tmp/%RN% > "%TEMP%\r1_sz.txt" 2>nul <nul
for /f "tokens=4" %%s in (%TEMP%\r1_sz.txt) do set "RS=%%s"
if "%RS%"=="%LZ%" (
  echo  设备端已有同名且大小一致的文件，跳过上传。
  exit /b 0
)
"%ADB%" %type% push "%LF%" /data/local/tmp/%RN% <nul
if errorlevel 1 (
  color 04
  echo  上传失败！
  pause
  color 0a
  exit /b 1
)
set "RS="
"%ADB%" %type% shell ls -l /data/local/tmp/%RN% > "%TEMP%\r1_sz.txt" 2>nul <nul
for /f "tokens=4" %%s in (%TEMP%\r1_sz.txt) do set "RS=%%s"
if not "%RS%"=="%LZ%" (
  color 04
  echo  上传不完整！本地 %LZ% 字节，设备端 %RS% 字节。
  echo  WiFi adb 偶发静默截断，请重连后再试一次。
  pause
  color 0a
  exit /b 1
)
echo  上传完成（%LZ% 字节，已核对）
exit /b 0

:pmi
set "RN=%~1"
set "FLG=%~2"
echo  正在安装（设备端 dexopt 需 30~90 秒，请耐心等）...
"%ADB%" %type% shell "sh -c '/system/bin/pm install %FLG% /data/local/tmp/%RN% > /data/local/tmp/inst.txt 2>&1'" <nul
"%ADB%" %type% shell cat /data/local/tmp/inst.txt > "%~dp0inst.txt" <nul
type "%~dp0inst.txt"
findstr /i /c:"Success" "%~dp0inst.txt" >nul
if errorlevel 1 (
  color 04
  echo.
  echo  安装失败！上面是设备返回的原因。常见：
  echo    - INSTALL_FAILED_UPDATE_INCOMPATIBLE : 旧包签名不同，先卸载再装
  echo    - INSTALL_PARSE_FAILED_*             : apk 上传被截断，重传一次
  echo    - INSTALL_FAILED_DEXOPT              : 设备存储空间不足
  pause
  color 0a
  exit /b 1
)
if exist "%~dp0inst.txt" del "%~dp0inst.txt" >nul
echo  安装成功。
exit /b 0

:do_server
echo.
echo  ------------ 服务器地址 ------------
if defined ARGSRV (
  set "SIP=%ARGSRV%"
) else (
  echo  用官方服务器请输入 official；用本地自建服务器请输入服务器 IP。
  set /p "SIP=服务器 IP（默认 192.168.2.189）: "
  if not defined SIP set "SIP=192.168.2.189"
)
if /i "%SIP%"=="official" (
  set "OTA="
  set "WSU="
  echo  将清空覆盖，回到官方默认服务器。
) else (
  set "OTA=http://%SIP%:8003/xiaozhi/ota/"
  set "WSU="
  if not defined ARGSRV (
    set "WSQ="
    set /p "WSQ=是否同时填 WS 直连 ws://%SIP%:8000/xiaozhi/v1/ ?(y/n，一般选 n) : "
    if /i "!WSQ!"=="y" set "WSU=ws://%SIP%:8000/xiaozhi/v1/"
  )
)
echo  OTA = %OTA%
echo  WS  = %WSU%
echo.
where curl.exe >nul 2>nul
if errorlevel 1 goto server_adb
curl.exe -s --noproxy "*" -m 10 -X POST -d "otaUrl=%OTA%&wsUrl=%WSU%" http://%DEVIP%:8080/api/set
echo.
echo  已提交。控制台「服务器」卡片与日志里的 ws 地址可确认是否切过去了。
goto done

:server_adb
echo  未找到 curl.exe，改用 adb 直接写配置（效果相同）
if defined OTA (
  "%ADB%" %type% shell "run-as com.phicomm.speaker.device sh -c 'echo %OTA% > files/ota_url'" <nul
) else (
  "%ADB%" %type% shell "run-as com.phicomm.speaker.device sh -c 'rm -f files/ota_url'" <nul
)
echo  已写入 files/ota_url，请用菜单 [7] 重启小智使其生效。
goto done
