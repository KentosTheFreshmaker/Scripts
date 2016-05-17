@echo off


:start

set /P addr = "Address: "

ping -4 "%addr%"

pause


tracert -4 "%addr%"

pause

pathping -4 "%addr%"

pause

goto start