@echo off

echo System File Checker

:begin
set /p response1= "Memtest launch? (Y/N)"
if %response1%==y goto launch
if %response1%==Y goto launch
if %response1%==n goto begin2
if %response1%==n goto begin2
goto begin
:launch

echo Launching Memory Test Scheduler
Pause
mdsched.exe
goto begin2

:begin2
set /p response2= "Run Check Disk? (Y/N)"
if %response2%==y goto chk
if %response2%==Y goto chk
if %response2%==n goto begin3
if %response2%==N goto begin3
goto begin2
:chk
echo Running Check disk ..
chkdsk /f
goto begin3

:begin3

set /p response3= "Run System File Checker? (Y/N)"
if %response3%==y goto sfcrun
if %response3%==Y goto sfcrun
if %response3%==n goto end
if %response3%==N goto end
goto begin3

:sfcrun
sfc /scannow

:end