sc config UxSms start= auto
sc config Themes start= auto
net start Themes

bcdedit.exe /set nointegritychecks on


@Echo Off
COLOR 2F
reg add "HKCU\Software\Microsoft\Windows\DWM" /v Composition /t reg_dword /d 00000001 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v CompositionPolicy /t reg_dword /d 00000002 /f
net stop uxsms
net start uxsms

ipconfig/flushdns && exit