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

## Fix Internet Connectivity 

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