@echo off
netstat -ano

:begin

set /p askquest="Refresh? (y/n)"


if %askquest%==n goto end
if %askquest%==N goto end
if %askquest%==y goto start
if %askquest%==Y goto start

goto begin

:start

netstat -ano

goto begin

:end
