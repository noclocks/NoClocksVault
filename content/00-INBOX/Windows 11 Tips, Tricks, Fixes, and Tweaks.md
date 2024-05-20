## Repair Windows Component Store

> [!ABOUT]
> The component store on Windows is a feature which stores all system files. Whenever Windows gets an operating system update, this store may get corrupted. To fix the store we use the [[Deployment Image and Service Management Tool (DISM)]].  

```cmd
# cmd as admin
DISM /Online /Cleanup-Image /RestoreHealth
```

## Reset Settings UI Application

> [!ABOUT]
> If the settings UI app won't open, try resetting it with [[PowerShell]].

```powershell
# powershell as admin

Set-ExecutionPolicy Unrestricted

Add-AppXPackage -DisableDevelopmentMode -Register "$Env:SystemRoot\ImmersiveControlPanel\AppxManifest.xml"
```

## Disable OneDrive from Running in Background

> [!ABOUT]
> By default, on [[Windows 11]], [[Tool - Microsoft OneDrive|OneDrive]] is enabled and runs on startup. To disable, modify the registry key `HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive`.

```cmd
```

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

## Reset Windows Defender Defaults

1. regsvr32 wuaueng.dll 2. regsvr32 wucltui.dll 3. regsvr32 softpub.dll 4. regsvr32 wintrust.dll 5. regsvr32 initpki.dll 6. regsvr32 wups.dll 7. regsvr32 wuweb.dll 8. regsvr32 atl.dll 9. regsvr32 mssip32.dll 

Then it sets some registry keys.

## Reset Windows Security Settings Defaults

```cmd
# cmd as admin

secedit /configure /cfg %windir%\inf\defltbase.inf /db defltbase.sdb /verbose 
```

