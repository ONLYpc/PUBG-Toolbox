::::::::::::::::::::::::::::::::::::::::::::
:: Elevate.cmd - Version 4
:: Automatically check & get admin rights
:: see "https://stackoverflow.com/a/12264592/1016343" for description
::::::::::::::::::::::::::::::::::::::::::::
 @echo off
 CLS
 ECHO.
 ECHO =============================
 ECHO 管理员模式启动中...
 ECHO =============================

:init
 setlocal DisableDelayedExpansion
 set cmdInvoke=1
 set winSysFolder=System32
 set "batchPath=%~0"
 for %%k in (%0) do set batchName=%%~nk
 set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
 setlocal EnableDelayedExpansion

:checkPrivileges
  NET FILE 1>NUL 2>NUL
  if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
  if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
  ECHO.
  ECHO **************************************
  ECHO 提升管理员权限中...
  ECHO **************************************

  ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
  ECHO args = "ELEV " >> "%vbsGetPrivileges%"
  ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
  ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
  ECHO Next >> "%vbsGetPrivileges%"

  if '%cmdInvoke%'=='1' goto InvokeCmd 

  ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
  goto ExecElevation

:InvokeCmd
  ECHO args = "/c """ + "!batchPath!" + """ " + args >> "%vbsGetPrivileges%"
  ECHO UAC.ShellExecute "%SystemRoot%\%winSysFolder%\cmd.exe", args, "", "runas", 1 >> "%vbsGetPrivileges%"

:ExecElevation
 "%SystemRoot%\%winSysFolder%\WScript.exe" "%vbsGetPrivileges%" %*
 exit /B

:gotPrivileges
 setlocal & cd /d %~dp0
 if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)

 ::::::::::::::::::::::::::::
 ::START
 ::::::::::::::::::::::::::::
 REM Run shell as admin (example) - put here code as you like
@echo off
@echo 正在重置网络设置中...
REM 重置网络设置
@taskkill  /f /t /im  IEXPLORE.exe >nul 2>nul
@netsh winsock reset all >nul 2>nul
@netsh int 6to4 reset all >nul 2>nul
@netsh int ipv4 reset all >nul 2>nul
@netsh int ipv6 reset all >nul 2>nul
@netsh int httpstunnel reset all >nul 2>nul
@netsh int isatap reset all >nul 2>nul
@netsh int portproxy reset all >nul 2>nul
@netsh int tcp reset all >nul 2>nul
@netsh int teredo reset all >nul 2>nul
@echo 清理IE设置代理中..
rem 禁用自动检测设置
@reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /v DefaultConnectionSettings /t REG_BINARY /d 4600000000 /f >nul
@reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /v SavedLegacySettings /t REG_BINARY /d 4600000000 /f >nul
rem 禁用代理
@reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f >nul
rem 删除代理IP地址
@reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /f >nul
rem 禁用自动配制脚本（地址也被删除）
@reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v AutoConfigURL /f >nul
@echo 修改当前网卡dns中..
@for /f "tokens=4*" %%a in ('netsh interface show interface ^| findstr "已连接"') do set "ConName=%%~a"
netsh interface ip set dns %ConName% static 119.29.29.29
REM 修改当前网卡dns
ipconfig /flushdns
@echo 127.0.0.1 localhost>%systemroot%\system32\drivers\etc\hosts 
REM HOSTS清空
@echo 正在同步本地时间...请稍候..
@sc config W32Time start= auto >nul 2>nul
REM 时间服务选择自动启动
@w32tm /register >nul 2>nul
REM 注册时间服务
@net start W32Time >nul 2>nul
REM 启动时间服务
@reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\Config\ /v MaxNegPhaseCorrection /t REG_DWORD /d 0xffffffff /f >nul
@reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\Config\ /v MaxPosPhaseCorrection /t REG_DWORD /d 0xffffffff /f >nul
REM 修改注册表值，修改 修改时间 的最大和最小间隔
@w32tm /config /manualpeerlist:"time.windows.com" /syncfromflags:manual /reliable:yes /update >nul 2>nul
REM 联网修改时间
@w32tm /resync >nul 2>nul
@w32tm /resync >nul 2>nul
@w32tm /config /manualpeerlist:"time.nist.gov" /syncfromflags:manual /reliable:yes /update >nul 2>nul
REM 联网修改时间
@w32tm /resync >nul 2>nul
@w32tm /resync >nul 2>nul
@echo ————————————————————————————————————————
@echo 已经初始化设置，请重试腾讯手游助手。
@echo 还有问题联系版主or群管理。
@echo. & pause