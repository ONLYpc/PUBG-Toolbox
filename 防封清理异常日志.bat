cls 
 
cls 
color C
:start 
cls 
 
title 
mode con cols=80 lines=32 
 
color B
@echo off 
echo  
title 
 
color A
title  清理垃圾
@ echo 正在清理····
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
del /f /s /q %systemdrive%\*.log 
color 0
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %systemdrive%\*.old 
color 1
del /f /s /q %systemdrive%\recycled\*.* 
del /f /s /q %windir%\*.bak 
del /f /s /q %windir%\prefetch\*.* 
rd /s /q %windir%\temp & md %windir%\temp 
color B
del /f /q %userprofile%\cookies\*.* 
del /f /q %userprofile%\recent\*.* 
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 
color 2
del /f /s /q "%userprofile%\recent\*.*" 
del /f /s /q %systemdrive%\*.tmp
RD %windir%\$hf_mig$ /Q /S
color C
del %windir%\2950800.txt /f /q
for /f %%i in (%windir%\2950800.txt) do rd %windir%\%%i /s /q
dir %windir%\$NtUninstall* /a:d /b >%windir%\2950800.txt
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
color 3
del /f /s /q %systemdrive%\*.pnf
del /f /s /q %systemdrive%\infcache.1
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
color D
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
color 4
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
del /f /s /q %systemdrive%\*.log 
del /f /s /q %systemdrive%\*.gid 
color E
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %systemdrive%\*.old 
del /f /s /q %systemdrive%\recycled\*.* 
del /f /s /q %windir%\*.bak 
color 5
del /f /s /q %windir%\prefetch\*.* 
rd /s /q %windir%\temp & md %windir%\temp 
del /f /q %userprofile%\cookies\*.* 
del /f /q %userprofile%\recent\*.* 
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 
del /f /s /q "%userprofile%\recent\*.*"
del /f /s /q %windir%\system32\cid_store.dat
md %windir%\system32\cid_store.dat
color F
attrib +s +h +r %windir%\system32\cid_store.dat
del /f /s /q %windir%\system32\pub_store.dat
md %windir%\system32\pub_store.dat
attrib +s +h +r %windir%\system32\pub_store.dat
del /f /s /q %windir%\system32\xlhcc.dat
color 6
md %windir%\system32\xlhcc.dat
attrib +s +h +r %windir%\system32\xlhcc.dat
del /f /s /q %systemdrive%\*.tmp
RD %windir%\$hf_mig$ /Q /S
color 7
del %windir%\2950800.txt /f /q
for /f %%i in (%windir%\2950800.txt) do rd %windir%\%%i /s /q
dir %windir%\$NtUninstall* /a:d /b >%windir%\2950800.txt
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.pnf
color 8
del /f /s /q %systemdrive%\infcache.1
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
color 9
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
color 2D
rd /s /q "c:\vod_cache_data" 2>NUL
del /f /s /q %windir%\system32\cid_store.dat
md %windir%\system32\cid_store.dat
attrib +s +h +r %windir%\system32\cid_store.dat
del /f /s /q %windir%\system32\pub_store.dat
md %windir%\system32\pub_store.dat
color 9
attrib +s +h +r %windir%\system32\pub_store.dat
del /f /s /q %windir%\system32\xlhcc.dat
md %windir%\system32\xlhcc.dat
color 7
attrib +s +h +r %windir%\system32\xlhcc.dat
rem del /f /q %userprofile%\COOKIES s\*.* 
rem del /f /q %userprofile%\recent\*.* 
%windir%\system32\sfc.exe /purgecache 
%windir%\system32\defrag.exe %systemdrive% -b ！
color 6
%windir%\system32\sfc.exe /purgecache  
%windir%\system32\defrag.exe %systemdrive% -b 
Set HomeDrive=C:
Set WinDir=%HomeDrive%\WINDOWS
Set SysDir=%WinDir%\System32
Set ProgFile=%HomeDrive%\Program Files
Set CurUser=%HomeDrive%\Documents and Settings\Administrator
Set AllUser=%HomeDrive%\Documents and Settings\All Users
Rd /s/q "%AllUser%\Documents\My Videos
Rd /s/q "%AllUser%\Documents\My Pictures
Rd /s/q "%AllUser%\Documents\My Music
Rd /s/q "%ProgFile%\Windows Media Player\Icons
Rd /s/q "%ProgFile%\Windows Media Player\Sample Playlists
Rd /s/q "%ProgFile%\Windows Media Player\Skins
Rd /s/q "%ProgFile%\Windows Media Player\Visualizations
Del /a/f/s/q "%ProgFile%\Windows Media Player\*.txt
Del /a/f/s/q "%AllUser%\「开始」菜单\Windows Catalog.*
Del /a/f/s/q "%AllUser%\「开始」菜单\Windows Update.*
Del /a/f/s/q "%AllUser%\「开始」菜单\设定程序访问和默认值.*
Rd /s/q "%ProgFile%\360Safe\hotfix"
Rd /s/q "%CurUser%\Application Data\ACD Systems
Del /a/f/s/q "%ProgFile%\ACDSee\*.hlp"
Del /a/f/s/q "%ProgFile%\ACDSee\*.cnt"
Del /a/f/s/q "%ProgFile%\ACDSee\PlugIns\*.hlp
Del /a/f/s/q "%ProgFile%\ACDSee\PlugIns\*.chm
Del /a/f/s/q "%ProgFile%\Ringz Studio\Storm Codec\*.txt
Del /a/f/s/q "%ProgFile%\Ringz Studio\Storm Codec\*.ini
Del /a/f/s/q "%ProgFile%\Ringz Studio\Storm Codec\*.dat
Del /a/f/s/q "%ProgFile%\Ringz Studio\Storm Codec\GSpot.exe
Del /a/f/s/q "%ProgFile%\Ringz Studio\Storm Codec\StormSet.exe
Del /a/f/s/q "%ProgFile%\Ringz Studio\Storm Codec\Codecs\languages\ffdshow.1033.en
Rd /s/q "%AllUser%\Application Data\Storm\Update
Rd /s/q "%AllUser%\「开始」菜单\程序\暴风影音
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\CoreVideo.Resources\en.lproj
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\QuickTime3GPP.Resources\en.lproj
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\QuickTime.Resources\en.lproj
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\QuickTimeAudioSupport.Resources\en.lproj
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\QuickTimeEssentials.Resources\en.lproj
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\QuickTimeH264.Resources\en.lproj
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\QuickTimeInternetExtras.Resources\en.lproj
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\QuickTimeMPEG4.Resources\en.lproj
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\QuickTimeStreaming.Resources\en.lproj
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\QuickTimeStreamingExtras.Resources\en.lproj
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\QuickTimeVR.Resources\en.lproj
Rd /s/q "%ProgFile%\Ringz Studio\Storm Codec\QTSystem\QuickTimeWebHelper.Resources\en.lproj
Rd /s/q "%CurUser%\「开始」菜单\程序\freeime
Del /a/f/s/q "%ProgFile%\freeime\freeime.htm
Del /a/f/s/q "%ProgFile%\freeime\极点五笔 纪念版.url
Del /a/f/s/q "%ProgFile%\freeime\*.gif
Del /a/f/s/q "%ProgFile%\freeime\*.txt
Rd /s/q "%ProgFile%\freeime\skin\Apple_Z
Rd /s/q "%ProgFile%\freeime\skin\bear2
Rd /s/q "%ProgFile%\freeime\skin\Elegant
Rd /s/q "%ProgFile%\freeime\skin\IF_Taiji
Rd /s/q "%ProgFile%\freeime\skin\time
Rd /s/q "%ProgFile%\freeime\skin\du
Rd /s/q "%ProgFile%\freeime\skin\huan
Rd /s/q "%ProgFile%\freeime\skin\Tango NightXP
Rd /s/q "%ProgFile%\freeime\skin\youxihou
Rd /s/q "%ProgFile%\freeime\skin\blueness
Rd /s/q "%ProgFile%\freeime\skin\Hello Kitty
Rd /s/q "%ProgFile%\freeime\skin\MG_S
Rd /s/q "%ProgFile%\freeime\skin\VistaHeiMini
Del /a/f/s/q "%CurUser%\Application Data\Microsoft\Internet Explorer\Quick Launch\酷我音乐盒.*
Rd /s/q "%CurUser%\「开始」菜单\程序\酷我音乐盒
Del /a/f/s/q "%ProgFile%\KWMUSIC\readme.txt
Del /a/f/s/q "%ProgFile%\Microsoft Office\OFFICE11\2052\*.chm
Del /a/f/s/q "%ProgFile%\Microsoft Office\OFFICE11\2052\*.htm
Del /a/f/q "%AllUser%\「开始」菜单\程序\PPS 网络电视.*
Rd /s/q "%AllUser%\「开始」菜单\程序\PPStream
Del /a/f/s/q "%ProgFile%\PPStream\*.url
Del /a/f/s/q "%ProgFile%\PPStream\whatsnew.txt
Del /a/f/q "%ProgFile%\Real\RealPlayer\Setup\setup.exe"
Del /a/f/q "%ProgFile%\Real\RealPlayer\*.chm
Del /a/f/q "%ProgFile%\Real\RealPlayer\*.txt
Del /a/f/q "%ProgFile%\Real\RealPlayer\*.html
Rd /s/q "%ProgFile%\KWREAL"
Del /a/f/q "%ProgFile%\Thunder\AyuConfig.exe
Del /a/f/s/q "%ProgFile%\Thunder Network\Thunder\Program\Update\*.*"
Rd /s/q "%AllUser%\Application Data\Thunder Network\KanKan"
Rd /s/q "%ProgFile%\Thunder Network\Thunder\Components\KanKan"
Del /a/f/q "%ProgFile%\WinRAR\*.diz
Del /a/f/q "%ProgFile%\WinRAR\*.txt
Del /a/f/q "%ProgFile%\WinRAR\*.chm
Del /a/f/q "%ProgFile%\WinRAR\*.htm
Del /a/f/q "%ProgFile%\千千静听\readme.txt
Del /a/f/s/q "%CurUser%\Application Data\Microsoft\Internet Explorer\Quick Launch\千千静听.*
Del /a/f/q "%AllUser%\Application Data\UNISPIM\usrwl.dat"
Del /a/f/q "%CurUser%\Application Data\UNISPIM\usrwl.dat"
Rd /s/q "%WinDir%\MAGICSET"
Rd /s/q "%HomeDrive%\Found.*"
For /f "delims=\" %%i in ('dir "%HomeDrive%\Found.*" /adh /b') do Rd /s/q "%HomeDrive%\%%i"
Del /a/f/q "%HomeDrive%\PageFile.sys"
Del /a/f/q "%HomeDrive%\HiberFil.sys"
echo.Rd /s/q "%WinDir%\$*$"
For /f "delims=\" %%i in ('dir "%Windir%\$*$" /adh /b') do Rd /s/q "%WinDir%\%%i"
Del /a/f/s/q "%SysDir%\oobe\*.*"
Del /a/f/s/q "%WinDir%\Cursors\*.*"
Del /a/f/s/q "%WinDir%\Temp\*.*"
Del /a/f/s/q "%WinDir%\Prefetch\*.*"
Del /a/f/s/q "%WinDir%\Inf\*.PNF"
Del /a/f/s/q "%SysDir%\ReinstallBackups\*.*"
Rd /s/q "%WinDir%\ime\CHTIME"
Rd /s/q "%WinDir%\ime\IMJP8_1"
Rd /s/q "%WinDir%\ime\imejp"
Rd /s/q "%WinDir%\ime\imejp98"
Rd /s/q "%WinDir%\ime\IMKR6_1"
Del /a/f/q "%WinDir%\ime\CHTIME\Applets\HWXCHT.DLL"
Rd /s/q "%SysDir%\IME\CINTLGNT"
Rd /s/q "%SysDir%\IME\TINTLGNT"
Del /a/f/q "%WinDir%\Fonts\gulim.ttc"
Del /a/f/q "%WinDir%\Fonts\msgothic.ttc"
Del /a/f/s/q "%CurUser%\Local Settings\Temporary Internet Files\*.*"
Del /a/f/s/q "%CurUser%\Local Settings\Temp\*.*"
Del /a/f/s/q "%CurUser%\Local Settings\History\*.*"
Del /a/f/s/q "%CurUser%\NetHood\*.*"
Del /a/f/s/q "%CurUser%\PrintHood\*.*"
Del /a/f/s/q "%CurUser%\Recent\*.*"
Del /a/f/s/q "%CurUser%\Cookies\*.*"
Del /a/f/q "%CurUser%\Local Settings\Application Data\IconCache.db"
Del /a/f/s/q "%ProgFile%\Outlook Express\*.txt
Del /a/f/s/q "%ProgFile%\Online Services\*.*
Rd /s/q "%ProgFile%\Messenger"
Rd /s/q "%ProgFile%\Movie Maker"
Rd /s/q "%ProgFile%\MSN Gaming Zone"
Rd /s/q "%ProgFile%\NetMeeting"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /t "REG_SZ" /d "我的电脑" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
Rd /s/q "%WinDir%\LastGood"
Rd /s/q "%WinDir%\Repair"
Del /a/f/q "%WinDir%\Driver Cache\i386\ntkrnlmp.exe"
Del /a/f/q "%WinDir%\Driver Cache\i386\ntkrnlpa.exe"
Del /a/f/q "%WinDir%\Driver Cache\i386\ntkrpamp.exe"
Del /a/f/q "%WinDir%\Driver Cache\i386\ntoskrnl.exe"
FOR %%M IN (C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO (DEL/A/F/Q %%M:\desktop.ini
)
FOR %%M IN (C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO (DEL/A/F/Q %%M:\AUTORUN.INF
DEL/A/F/Q %%M:\SXS.EXE
DEL/A/F/Q %%M:\OSO.EXE
DEL/A/F/Q %%M:\SETUP.EXE)
Del /a/f/s/q "%HomeDrive%\*.tmp"
Del /a/f/s/q "%HomeDrive%\*._mp"
Del /a/f/s/q "%HomeDrive%\*.log"
Del /a/f/s/q "%HomeDrive%\*.gid"
Del /a/f/s/q "%HomeDrive%\*.chk"
Del /a/f/s/q "%HomeDrive%\*.old"
Rd /s/q "%HomeDrive%\RECYCLER
Rd /s/q "%HomeDrive%\System Volume Information
Del /a/f/s/q "%WinDir%\*.bak"
Rd /s/q "%WinDir%\assembly
del /f /s /q "%WinDir%\SoftwareDistribution\Download\*.*
del /f /s /q "%WinDir%\inf\*.pnf
del /f /s /q %SysDir%\CatRoot2\tmp.ed0
del /f /s /q %SysDir%\spool\drivers\w32x86\3\*.*
del /f /s /q %SysDir%\*.tmp
del /f /s /q %SysDir%\*._mp
del /f /s /q %SysDir%\*.log
del /f /s /q %SysDir%\*.gid
del /f /s /q %SysDir%\*.chk
del /f /s /q %SysDir%\*.old
del /f /s /q %SysDir%%\recycled\*.*
TASKKILL /F /T /IM SXS.EXE
TASKKILL /F /T /IM SVOHOST.EXE 
TASKKILL /F /T /IM ROSE.EXE
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg
ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL]>>SHOWALL.reg
ECHO "CheckedValue"=->>SHOWALL.reg
ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL]>>SHOWALL.reg
ECHO "CheckedValue"=dword:00000001>>SHOWALL.reg
ATTRIB -R -H -S -A %SysDir%\SXS.EXE
ATTRIB -R -H -S -A %SysDir%\SVOHOST.EXE
ATTRIB -R -H -S -A %SysDir%\WINSCOK.DLL
DEL /F /Q /A -R -H -S -A %SysDir%\SXS.EXE
DEL /F /Q /A -R -H -S -A %SysDir%\SVOHOST.EXE
DEL /F /Q /A -R -H -S -A %SysDir%\WINSCOK.DLL
ATTRIB -R -H -S -A %WinDir%\SXS.EXE
ATTRIB -R -H -S -A %WinDir%\SVOHOST.EXE
ATTRIB -R -H -S -A %WinDir%\WINSCOK.DLL
DEL /F /Q /A -R -H -S -A %WinDir%\SXS.EXE
DEL /F /Q /A -R -H -S -A %WinDir%\SVOHOST.EXE
DEL /F /Q /A -R -H -S -A %WinDir%\WINSCOK.DLL
ATTRIB -R -H -S -A %WinDir%\System\SXS.EXE
ATTRIB -R -H -S -A %WinDir%\System\SVOHOST.EXE
ATTRIB -R -H -S -A %WinDir%\System\WINSCOK.DLL
DEL /F /Q /A -R -H -S -A %WinDir%\System\SXS.EXE
DEL /F /Q /A -R -H -S -A %WinDir%\System\SVOHOST.EXE
DEL /F /Q /A -R -H -S -A %WinDir%\System\WINSCOK.DLL
ATTRIB -R -H -S -A %SysDir%\dllcache\SXS.EXE
ATTRIB -R -H -S -A %SysDir%\dllcache\SVOHOST.EXE
ATTRIB -R -H -S -A %SysDir%\dllcache\WINSCOK.DLL
DEL /F /Q /A -R -H -S -A %SysDir%\dllcache\SXS.EXE
DEL /F /Q /A -R -H -S -A %SysDir%\dllcache\SVOHOST.EXE
DEL /F /Q /A -R -H -S -A %SysDir%\dllcache\WINSCOK.DLL
FOR %%a IN ( C: D: E: F: G: H: I: J: K: L: M: N: O: P: Q: R: S: T: U: V: W: X: Y: Z: ) DO ATTRIB -R -H -S -A %%a\SXS.EXE & DEL /F /Q /A -R -H -S -A %%a\SXS.EXE & ATTRIB -R -H -S -A %%a\AUTORUN.INF & DEL /F /Q /A -R -H -S -A %%a\AUTORUN.INF
ECHO Windows Registry Editor Version 5.00>SoundMam.reg
ECHO [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\SoundMam]>>SoundMam.reg
ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>SoundMam.reg
ECHO "SoundMam"=->>SoundMam.reg
REGEDIT /S SoundMam.reg
DEL /F /Q SoundMam.reg
REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /va /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /va /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v ctfmon.exe /d C:\WINDOWS\system32\ctfmon.exe
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v command /d ""C:\WINDOWS\IME\imjp8_1\IMJPMIG.EXE" /Spoil /RemAdvDef /Migration32"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v hkey /d HKLM
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v inimapping /d 0
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v item /d IMJPMIG
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v key /d SOFTWARE\Microsoft\Windows\CurrentVersion\Run
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v command /d "C:\WINDOWS\system32\IME\TINTLGNT\TINTSETP.EXE /IMEName"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v hkey /d HKLM
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v inimapping /d 0
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v item /d TINTSETP
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v key /d SOFTWARE\Microsoft\Windows\CurrentVersion\Run
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v command /d ""C:\WINDOWS\IME\imjp8_1\IMJPMIG.EXE" /Spoil /RemAdvDef /Migration32"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v hkey /d HKLM
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v inimapping /d 0
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v item /d TINTSETP
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v key /d SOFTWARE\Microsoft\Windows\CurrentVersion\Run
del "C:\Documents and Settings\All Users\「开始」菜单\程序\启动\*.*" /q /f
del "C:\Documents and Settings\Default User\「开始」菜单\程序\启动\*.*" /q /f
del "%userprofile%\「开始」菜单\程序\启动\*.*" /q /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\Folder" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.txt" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.rar" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.mp3" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.jpg" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.ini" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.bmp" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.doc" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.eip" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.htm" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.ico" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.inf" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.gif" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.wav" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.xls" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.rm" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedMRU" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\*" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\mp3" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\rm" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\wav" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\bat" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\exe" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\eip" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\ico" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\htm" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU\jpg" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{5E6AB780-7743-11CF-A12B-00AA004AE837}\Count" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{75048700-EF1F-11D0-9888-006097DEACF9}\Count" /va /f >nul 2>nul

reg delete "HKCU\Software\WinRAR\ArcHistory" /va /f >nul 2>nul

reg delete "HKCU\Software\WinRAR\DialogEditHistory\ArcName" /va /f >nul 2>nul

reg delete "HKCU\Software\WinRAR\DialogEditHistory\ExtrPath" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\MediaPlayer\Player\RecentFileList" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Microsoft Management Console\Recent File List" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Office\11.0\PowerPoint\Recent File List" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Office\11.0\Excel\Recent File" /va /f >nul 2>nul

reg delete "HKCU\Software\Microsoft\Office\11.0\Word\Data" /v "Settings" /f >nul 2>nul

reg delete "HKCU\Software\VMware, Inc." /va /f >nul 2>nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\WorkgroupCrawler\Shares" /f >nul 2>nul
@echo off&setlocal enabledelayedexpansion

for /f "delims=\" %%i in ('fsutil fsinfo drives^|find ""') do (

set drive_=%%i

fsutil fsinfo drivetype !drive_:~0,2!|find "固定">nul && del /a /f /q /s !drive_:~0,2!\Thumbs.db

)
reg query "HKCU\software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v Cache>%temp%\cleantmp.txt

reg query "HKCU\software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v Cookies>>%temp%\cleantmp.txt

reg query "HKCU\software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v History>>%temp%\cleantmp.txt

reg query "HKCU\software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v NetHood>>%temp%\cleantmp.txt

reg query "HKCU\software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v Recent>>%temp%\cleantmp.txt
echo ==============================================================================
echo ==============================================================================
echo ==============================================================================
echo ==============================================================================
echo  桜酱提示：清理完成  QQ：1294810372
echo. & pause  
