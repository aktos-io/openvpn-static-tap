# First step

Download your configuration and key files (*.ovpn, *.key, *.p12) files here, so it looks like this: 

```
openvpn-static-tap$ ls 
aktos-udp-1196-ceremcem             ip-settings.txt
aktos-udp-1196-ceremcem-config.zip  linux-connect.sh
aktos-udp-1196-ceremcem.ovpn        README.md
aktos-udp-1196-ceremcem.p12         up.cmd
aktos-udp-1196-ceremcem-tls.key     up.sh
auth.txt                            windows-connect.cmd
```

# Additional Settings


auth.txt

```
your-user-name
your-password
```

ip-settings.txt

```
your.static.ip.number
```

# Linux 

Add these to your `.ovpn`: 

```
auth-user-pass auth.txt
script-security 3 system
up ./up.sh
```


Add to `/etc/resolv.conf` for internal nameserver

```
nameserver 192.168.9.105
```

# Windows 

0. Install [OpenVPN client](https://openvpn.net/index.php/open-source/downloads.html)
1. Allow openvpn.exe to ["Run as Administrator"](https://community.openvpn.net/openvpn/ticket/68#comment:7)
    1. Find `C:\Program Files\OpenVPN\bin\openvpn.exe`
    2. Right click > Properties > Compatibility > Run as Administrator -> do Check
2. Rename the TAP adapter as `aea-tap` 

Add these to your `.ovpn`: 

```
auth-user-pass auth.txt
script-security 3 system
up ./up.cmd 
```


# RUN

Linux: `linux-connect.sh`
Windows: `windows-connect.cmd`
