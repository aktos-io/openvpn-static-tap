@echo off

set /p IP=<%~dp0\ip-settings.txt
set ADAPTER_NAME=%1

echo Setting ip address to %IP% on adapter %ADAPTER_NAME%
netsh interface ip set address "%ADAPTER_NAME%" static %IP% 255.255.255.0
