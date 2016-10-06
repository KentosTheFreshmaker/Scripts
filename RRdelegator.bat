@echo off

for /f %%D in ('wmic volume get DriveLetter^, Label ^| find "THISDRIVE"') do set usb=%%D

echo @echo off > %usb%\rolling.bat
echo start https://youtu.be/dQw4w9WgXcQ >> %usb%\rolling.bat
echo schtasks /delete /tn Rollin /F >> %usb%\rolling.bat
echo Del c:\rolling.bat /Q >> %usb%\rolling.bat


copy %usb%\rolling.bat c:\rolling.bat /Y

del %usb%\rolling.bat /Q


schtasks /create /tn Rollin /tr c:\rolling.bat /sc ONLOGON /ru "" /F


