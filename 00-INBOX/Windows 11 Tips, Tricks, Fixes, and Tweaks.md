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

## Fix Internet Protocol (TCP/IP)

> [!ABOUT]
> Fix internet connectivity issues by resetting the internet protocol. Runs `net int ip reset` which modifies the registry to reset `TCP/IP`.

```cmd
# cmd as admin

# reset internet protocol
net int ip reset
```

