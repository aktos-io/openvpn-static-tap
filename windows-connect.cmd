@echo off
FOR %%I in (%~dp0\*.ovpn) DO start openvpn --config %%I