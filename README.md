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

RUN: `linux-connect.sh`

# Windows 

*STEP-1*: Rename the TAP adapter as `aea-tap` 

Add these to your `.ovpn`: 

```
auth-user-pass auth.txt
script-security 3 system
up ./up.cmd 
```

RUN: `windows-connect.cmd`

