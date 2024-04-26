## Repair Windows Component Store

> [!ABOUT]
> The component store on Windows is a feature which stores all system files. hen 

## Fix Problem with DNS Resolution

> [!ABOUT]
> Fix problems with [[Domain Name Server or System (DNS)|DNS]] Resolution by Flushing the IP Configuration and clearing the DNS Resolver Cache.

```cmd
# cmd as admin

# flush ip
ipconfig /flushdns

# stop dnscache
net stop dnscache

# re-start dnscache
net start dnscache
```

## Fix Internet Winsock Catalog

> [!ABOUT]
> Winsock is a technical specification that defines how Windows network software should access network services, especially TCP/IP. Windows comes with a [[Dynamic Link Library (DLL)|DLL]] that implements the [[Application Programming Interface (API)|API]] and coordinates Windows programs and TCP/IP connections. However, sometimes it gets corrupted and as a consequence, can break internet connectivity.

```cmd
# cmd as admin

# reset winsock
netsh winsock reset
```

## Fix Internet Protocol (TCP/IP)

> [!ABOUT]
> Fix internet connectivity issues by resetting the internet protocol. Runs `net int ip reset` which modifies the registry to reset `TCP/IP`.

```cmd
# cmd as admin

# reset internet protocol
net int ip reset
```

## Clear Windows Update History

> [!ABOUT]
> Windows Update shows the history of installed and failed updates. If this list grows too large, you can clear it per below.

```cmd
# cmd as admin

# stop windows update service
net stop wuauserv

# stop lookup service
net stop AeLookupSvc

# delete software distribution logs 
del "C:\Windows\SoftwareDistribution\DataStore\Logs\edb.log"

# re-start services
net start wuauserv
net start AeLookupSvc
```

## Reset Internet Explorer to Defaults

```cmd
# cmd as admin
rundll32.exe inetcpl.cpl,ResetIEtoDefaults
```

## Fix Missing Telnet Command

> [!ABOUT]
> [[Telnet]] (Teletype Network) is a protocol meant for internet or [[Local Area Network (LAN)|LAN]] communication. It is primarily used to control other computers remotely.

```cmd
# cmd as admin

# enable telnet
DISM /Online /Enable-Feature /FeatureName:TelnetClient
```