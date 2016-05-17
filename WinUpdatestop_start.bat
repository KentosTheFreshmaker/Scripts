@echo off

echo " Windows Update Killer / Refresher/ Starter "

pause

:begin
SET /P runscript="Stop update services? (Y/N) "
if %runscript%==y goto run
if %runscript%==Y goto run
if %runscript%==n goto cleaner
if %runscript%==N goto cleaner
goto begin
:run
net stop wuauserv
net stop bits
echo " Windows Update Service Stopped"
pause

:cleaner
SET /P runscript="Clear Windows Update Cache? (Y/N) "
if %runscript%==y goto run3
if %runscript%==Y goto run3
if %runscript%==n goto starter
if %runscript%==N goto starter
goto :cleaner

:run3
rmdir C:\Windows\SoftwareDistribution\DataStore\Logs /s
del C:\Windows\SoftwareDistribution\DataStore\DataStore.edb
echo "Windows Update Cache Cleared"
pause


:starter

SET /P runscript="Start update services? (Y/N) "
if %runscript%==y goto run2
if %runscript%==Y goto run2
if %runscript%==n goto end
if %runscript%==N goto end
goto starter

:run2
echo starting Windows Update Services
net start bits
net start wuauserv

:end