@echo off

set /p IP=<%~dp0\ip-settings.txt
set DNS=192.168.9.105
set ADAPTER_NAME=aea-tap

echo Setting DNS to %DNS% on %ADAPTER_NAME%
netsh interface ip set dns name="%ADAPTER_NAME%" static %DNS% primary
netsh interface ip add dns name="%ADAPTER_NAME%" 8.8.8.8 index=2
ipconfig /flushdns

echo Setting ip address to %IP%
netsh interface ip set address "%ADAPTER_NAME%" static %IP% 255.255.255.0
