---
creation_date: 2024-05-17
modification_date: 2024-05-17
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev/Windows
  - Status/Complete
aliases:
  - Host Issues
publish: true
permalink:
description:
image:
cssclasses:
---


# Resolving Windows Network Host Issues

> [!SOURCE] Sources:
> - **

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> The infamous *No Such Host Is Known* error is a common issue that occurs when your computer attempts to connect to a specific domain or website, but it cannot find the corresponding [[Internet Protocol (IP)|IP]] address for that domain in the [[Domain Name Server or System (DNS)]]. 
> 
> In simpler terms, your computer is trying to reach a web address, but it doesn’t know where that address is located in the vast expanse of the internet.

## Common Causes

- Software application runs and attempts to make communication with an online [[Application Programming Interface (API)|API]] based [[Uniform Resource Loader (URL)|URL]] and doesn't find its *hostname* or *server* ([[Domain Name Server or System (DNS)|DNS]] name error)
- Software application does not send its [[Fully Qualified Domain Name (FQDN)]]

### DNS Resolution Issues

The most common cause of this error is [[Domain Name Server or System (DNS)|DNS]] resolution problems. 

[[Domain Name Server or System (DNS)|DNS]] is like the internet's phone book, translating human-friendly domain names into IP addresses that computers can understand. When there’s an issue with this translation, you encounter the *No Such Host Is Known* error.

### Incorrect URLs

Sometimes, the error occurs due to typographical errors when entering the URL in your browser. A simple mistake in the website address can lead to this frustrating error.

### Firewall Security Software

Overly aggressive firewall or security software can also block your computer from accessing certain websites, leading to this error.

## Troubleshooting Steps

1. **Check Your Internet Connection**: Ensure that your internet connection is stable and working correctly.

2. **Restart Your Router and Computer**: Sometimes, a simple restart can resolve connectivity issues.

3. **Clear DNS Cache**: Clear your computer’s DNS cache to refresh the stored DNS information.

4. **Disable Firewall Temporarily**: Temporarily disable your firewall or security software to check if it’s causing the issue.

5. **Check for Typing Errors**: Double-check the URL you entered for any typing errors.

6. **Use Google’s Public DNS**: Switch to Google’s Public DNS servers (8.8.8.8 and 8.8.4.4) in your network settings.

7. **Update Network Drivers**: Make sure your network drivers are up to date.

## Prevention and Maintenance

To avoid encountering the ‘No Such Host Is Known’ error in the future, consider these preventive measures:

1. **Regularly Update DNS Settings**: Keep your DNS settings up to date to ensure smooth connectivity.

2. **Keep Your Firewall and Security Software Updated**: Ensure your firewall and security software are updated to their latest versions.

3. **Use Reliable Websites and Links**: Be cautious while visiting websites and clicking on links. Stick to trusted sources.


## Commands

```powershell
# check IP and respective DNS
ipconfig /all

# lookup hostname
nslookup
```

## Example - PowerShell Module Installation

```powershell
Install-PSResource: 'No such host is known. (www.powershellgallery.com:443)' 
Request sent: 'https://www.powershellgallery.com/api/v2/FindPackagesById()id="PowerShellAI"&$inlinecount=allpages&$filter=IsLatestVersion%20and%20Id%20eq%20"PowerShellAI"' 
Inner exception: 'No such host is known.'
```
***

## Appendix

*Note created on [[2024-05-17]] and last modified on [[2024-05-17]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[Resolving Windows Network Host Issues]] AND -"CHANGELOG" AND -"01-SLIPBOX/Resolving Windows Network Host Issues"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024