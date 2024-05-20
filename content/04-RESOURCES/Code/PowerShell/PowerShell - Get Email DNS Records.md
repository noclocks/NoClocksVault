---
creation_date: 2024-05-08
modification_date: 2024-05-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Type/Code/PowerShell
  - Topic/Dev
  - Topic/Dev/Windows
  - Topic/Dev/PowerShell
  - Status/WIP
aliases:
  - PowerShell PowerShell - Get Email DNS Records Code
publish: true
permalink:
description:
image:
cssclasses:
  - code
---

# Get Email DNS Records PowerShell Code

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - **

## Code Snippet

```powershell
function Get-MailDomainInfo {
    param(
        [parameter(Mandatory = $true)][string[]]$DomainName,
        [parameter(Mandatory = $false)][string]$DNSserver = '1.1.1.1'
    )
     
    $info = foreach ($domain in $DomainName) {
        
        #Check if domain name is valid, output warning it not and continue to the next domain (if any)
        try {
            Resolve-DnsName -Name $domain -Server $DNSserver -ErrorAction Stop | Out-Null

            #Retrieve all mail DNS records
            $autodiscoverA = (Resolve-DnsName -Name "autodiscover.$($domain)" -Type A -Server $DNSserver -ErrorAction SilentlyContinue).IPAddress
            $autodiscoverCNAME = (Resolve-DnsName -Name "autodiscover.$($domain)" -Type CNAME -Server $DNSserver -ErrorAction SilentlyContinue).NameHost
            $dkim1 = Resolve-DnsName -Name "selector1._domainkey.$($domain)" -Type CNAME -Server $DNSserver -ErrorAction SilentlyContinue
            $dkim2 = Resolve-DnsName -Name "selector2._domainkey.$($domain)" -Type CNAME -Server $DNSserver -ErrorAction SilentlyContinue
            $dmarc = (Resolve-DnsName -Name "_dmarc.$($domain)" -Type TXT -Server $DNSserver -ErrorAction SilentlyContinue | Where-Object Strings -Match 'DMARC').Strings
            $mx = (Resolve-DnsName -Name $domain -Type MX -Server $DNSserver -ErrorAction SilentlyContinue).NameExchange
            $spf = (Resolve-DnsName -Name $domain -Type TXT -Server $DNSserver -ErrorAction SilentlyContinue | Where-Object Strings -Match 'v=spf').Strings
            $includes = (Resolve-DnsName -Name $domain -Type TXT -Server $DNSserver -ErrorAction SilentlyContinue | Where-Object Strings -Match 'v=spf').Strings -split ' ' | Select-String 'Include:'
 
            #Set variables to Not enabled or found if they can't be retrieved
            $errorfinding = 'Not enabled'
           
 
            if ($null -eq $dkim1 -and $null -eq $dkim2) {
                $dkim = $errorfinding
            }
            else {
                $dkim = "$($dkim1.Name) , $($dkim2.Name)"
            }
 
            if ($null -eq $dmarc) {
                $dmarc = $errorfinding
            }
 
            if ($null -eq $mx) {
                $mx = $errorfinding
            }
 
            if ($null -eq $spf) {
                $spf = $errorfinding
            }

            if ($null -eq $autodiscoverCNAME) {
                $autodiscoverCNAME = $errorfinding
            }

            if (($autodiscoverA).count -gt 1 -or $null -ne $autodiscoverCNAME) {
                $autodiscoverA = $errorfinding
            }

            if ($null -eq $includes) {
                $includes = $errorfinding
            }
            else {
                $foundincludes = foreach ($include in $includes) {
                    if ((Resolve-DnsName -Server $DNSserver -Name $include.ToString().Split(':')[1] -Type txt -ErrorAction SilentlyContinue).Strings) {
                        [PSCustomObject]@{
                            SPFIncludes = "$($include.ToString().Split(':')[1]) : " + $(Resolve-DnsName -Server $DNSserver -Name $include.ToString().Split(':')[1] -Type txt).Strings
                        }
                    }
                    else {
                        [PSCustomObject]@{
                            SPFIncludes = $errorfinding
                        }
                    }
                }
            }
 
            [PSCustomObject]@{
                'Domain Name'             = $domain
                'Autodiscover IP-Address' = $autodiscoverA
                'Autodiscover CNAME '     = $autodiscoverCNAME
                'DKIM Record'             = $dkim
                'DMARC Record'            = "$($dmarc)"
                'MX Record(s)'            = $mx -join ', '
                'SPF Record'              = "$($spf)"
                'SPF Include values'      = "$($foundincludes.SPFIncludes)" -replace "all", "all`n`b"
            }
        }
        catch {
            Write-Warning ("{0} not found" -f $domain)
        }     
    }
    return $info 
}
```

## Details

> [!NOTE] About
> This note is about ...

## See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code]]
- [[MOC - PowerShell|PowerShell Map of Content]]

***

## Appendix

*Note created on [[2024-05-08]] and last modified on [[2024-05-08]].*

### Backlinks

```dataview
LIST FROM [[PowerShell - Get Email DNS Records]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/PowerShell/PowerShell - Get Email DNS Records"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024