@echo off

:begin
SET /P runs= "Display IPconfig info? (Y/N) "
if %runs%==y goto run
if %runs%==Y goto run
if %runs%==n goto begin2
if %runs%==N goto begin2
goto begin
:run
ipconfig /all
pause

:begin2

set /P sys= " Display System Info? (Y/N)"
if %sys%==Y goto sys
if %sys%==y goto sys
if %sys%==N goto begin3
if %sys%==n goto begin3
goto begin2

:sys
echo " Displaying System Info..."
systeminfo
pause


:begin3

set /P arp= " Display ARP cache? (Y/N)"
if %arp%==Y goto arp
if %arp%==y goto arp
if %arp%==n goto end
if %arp%==N goto end

goto begin3

:arp

arp -a 
pause

:end
