@echo off

echo "Current Configuration "

ipconfig /all

pause

:begin
SET /P runscript="Do you want to flush the DNS cache and then re-register DNS services? (Y/N) "
if %runscript%==y goto run
if %runscript%==Y goto run
if %runscript%==n goto end
if %runscript%==N goto end
goto begin
:run
ipconfig /flushdns
ipconfig /registerdns
echo "DNS flushed and re-registered"
pause

:end



