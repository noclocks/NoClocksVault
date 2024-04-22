---
creation_date: 2024-04-22
modification_date: 2024-04-22
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Checklist
  - Topic/Dev
  - Topic/IT
  - Topic/Windows
  - Status/WIP
aliases:
  - Windows Performance and Installation Integrity
  - Windows Performance and Installation Integrity Checklist
publish: true
permalink:
description:
image:
cssclasses:
---

# Windows Performance and Installation Integrity Checklist

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - **

For those with performance problems in [[Microsoft Windows]] these can often be resolved by doing basic housekeeping and troubleshooting steps.  The following steps will check over your install quality and fix most problems.

You can take your time to perform these steps over days but try to complete them all to know for sure the quality and condition of your install.  If you need any help just ask in the Comments section below.

> [!TIP]
> *If any steps cannot be run, try restarting into [[Windows Safe Mode]] with Networking following this guide: [How to enter Windows Safe Mode.](http://www.pcworld.com/article/2984712/windows/how-to-enter-windows-10s-safe-mode.html).
> You can also run the Repair commands via the [[04-RESOURCES/Code/CMD/_README|Command Prompt Code|Command Prompt]] at boot in the [Advanced Startup Options](https://www.tenforums.com/tutorials/2294-advanced-startup-options-boot-windows-10-a.html) (WinRE) _Advanced Troubleshoot options, which may work best from bootable media created from_ [Media Creation Tool](http://windows.microsoft.com/en-us/windows-10/media-creation-tool-install "windows.microsoft.com"), especially if the password is not working since bootable media is the only Repair Mode that doesn't require a password .

At any point if you don't have your files backed up and cannot afford to lose them you can rescue them using one of these methods:

[Rescue Files when Windows Won't Start](https://answers.microsoft.com/en-us/windows/forum/all/rescue-files-when-windows-wont-start/862c143f-9239-4e63-8968-635e8ba9efd6 "answers.microsoft.com") . Always back up your files: [Easy, free backup strategies for files and Windows (2023)](https://answers.microsoft.com/en-us/windows/forum/all/easy-free-backup-strategies-for-files-and-windows/0a900895-a4f1-4808-83dd-128e7b79d454 "answers.microsoft.com")

1) If you know when the problem started, try to System Restore to a point before then following [How to use System Restore on Windows 10](https://www.windowscentral.com/how-use-system-restore-windows-10 "www.windowscentral.com"). Make sure System Restore is always turned on for C drive and has plenty of disk space apportioned (5-15%) as this will be your first line of defense and allow you to roll back any undesired changes that affect performance. If you have a restore point before problems began, trying rolling back to it now.  If Windows won't start you can System Restore or do other Repairs from [Advanced Startup Options](https://www.tenforums.com/tutorials/2294-advanced-startup-options-boot-windows-10-a.html "www.tenforums.com") including the booted media.

2) Type Update in Start Search box or browse Start>Settings (gear icon)>Updates and Security>Windows Update, select Check for Updates. Including Optional Updates, expedite these through requested restart, then check again until no more are offered.   If you have Windows Update problems there is a new [Windows Update repair & reset guided walk-though](https://support.microsoft.com/en-us/help/10164/fix-windows-update-errors "support.microsoft.com") to resolve them.

3) Once all Windows Updates are installed with no more available, right click Start button to open Device Manager, import any drivers still missing, or update or reinstall any in error with a ! mark, from the PC or Device maker's Support Downloads webpage. Compare drivers available for download with the ones presently install to make sure you have the latest.  It shows how to trace and find unknown device drivers here:  [Updating a driver. - Microsoft Community](http://answers.microsoft.com/en-us/windows/wiki/windows_10-update/updating-a-driver/a5e6345e-af9b-4099-bef0-8d22254aa1c1 "answers.microsoft.com")

Update your drivers and BIOS/UEFI firmware from PC or motherboard maker's Support Downloads web page, using the full model number, Serial Number or Dell Service Tag on sticker. Compare the latest drivers available for download with the ones presently installed in Device Manager reached by right clicking the Start button. Make sure you have the latest BIOS or UEFI firmware, Chipset, Display (Video), Sound, USB3, Bluetooth, Network and all other drivers, or else download and install the latest now.

Updating drivers from the Device Manager or Windows Update is rarely enough. The most basic thing we need to learn to maintain a PC is keep the latest manufacturer's drivers installed from their Support Downloads web page.

4) Type msconfig in Start Search box, right click System Configuration Utility to Run as Administrator.  In the tab for Services **tick the box to Hide all MS Services,** disable everything except anti-virus, any sync, stickies, printer with scan.  All others are freeloaders on System Resources, cause conflicts , spy on you and do not need to Start with Windows unless you know for sure you need them on stand-by at all times.  If in doubt you can Google the name or ask back here. 

Then move to the tab for Startup, which will take you to Task Manager to do the same thing.

Repeat this step for Startup folder by right clicking Start to access Run box, copy/paste **shell:common startup** press Enter to open Startup Folder. 

Finally, check in Settings > Apps > Startup to disable anything that doesn't absolutely need to start with Windows there.

5) In your browsers' Settings, check Add-Ons or Extensions to disable all but Flash and any Reader helper: [How To Disable Plugins/Add-Ons/Extensions.](https://community.box.com/t5/How-to-Guides-for-Account/How-To-Disable-Plugins-Add-Ons-Extensions-In-Multiple-Browsers/ta-p/19 "community.box.com")  Change the Search to your desired one:  [How to Add Any Search Engine to Your Web Browser](https://www.howtogeek.com/114176/how-to-easily-create-search-plugins-add-any-search-engine-to-your-browser/ "www.howtogeek.com").  I would have several browsers on your task bar so there's always one that's best for the task.  I use Firefox, Edge and Chrome in that order of preference.  It's easy to share bookmarks between all of them in their settings under Import Favorites from another Browser.  Set the preferred one as Default in Settings > Apps > Default Apps. 

6) Remove any bundled third party security utilities and use the built in and exceptionally secure and fast Windows Defender Security Center. Defender gives best Windows performance, is built in, has least issues and is from Microsoft who knows how to protect their OS best. It includes easy to use features such as Antvirus, Firewall, Network security, Smart Screen Filter. It also includes the ability to block ransomware and other types of malicious activities - and its FREE! No need to buy a subscription.

7) Download, install, decline trial version, update,  then run full scans with [Malwarebytes](http://www.malwarebytes.org/ "www.malwarebytes.org"), the best free on-demand scanner.  Before doing a full scan enable Root-Kit Scanning in Scan settings. After scan clean up anything found, restart PC and run it one more time to be most thorough.

Afterwards you can turn off the Malwarebytes Premium Trial on it's Control Panel to use it as an on-demand scanner.  There's no need to buy the real-time protection in the Trial unless you get repeatedly infected using only Defender. 

8) For problems with apps  [Troubleshoot problems with an app - Windows Help](http://windows.microsoft.com/en-us/windows-8/what-troubleshoot-problems-app "windows.microsoft.com") .  Many apps can be Reset in Settings > Apps & Features by choosing the App's Advanced Settings.  You can also [Re-register Apps in Windows 8 and 10.](http://www.tenforums.com/tutorials/3175-apps-re-register-windows-8-10-a.html "www.tenforums.com")

9) Type CP in Task Bar Search box, open Control Panel, in Search box type Maintenance,  choose **Security and Maintenance**, choose Maintenance, then Start Maintenance.  You can make sure Maintenance is set to run regularly in the Maintenance Settings.  This is all the maintenance a good install of Windows 10 needs.  Third party optimizing and tweaking suites can ruin Windows.

10) Type CMD in Task Bar Search, right click Command Prompt to Run As Administrator (or boot the  [Windows 10 Installation Media](http://www.microsoft.com/en-us/software-download/windows10 "www.microsoft.com") to access Repair My Computer on second screen, then Troubleshoot Options, open a **Command Prompt)** Copy and Paste the following commands each followed by Enter key:

**sfc /scannow**  

If damaged files are reported run up to 3 separate times to try to repair files. 

If irreparable files remain then the image file they are compared against may need repair.  To determine this type Powershell in Search box on taskbar, choose Run as Administrator, copy and paste or type precisely these commands followed by Enter key:

**DISM /Online /Cleanup-Image /CheckHealth**

If Component Store corruption is detected, this will tell you if it is irreparable or can be repaired:

**DISM /Online /Cleanup-Image /ScanHealth**

If the image is reparable, run:

**Dism /Online /Cleanup-Image /RestoreHealth**

If it prompts for Sources file, mount or insert [Windows 10 installation media](http://www.microsoft.com/en-us/software-download/windows10 "www.microsoft.com"), locate install.wim or .esd file in Sources folder, substitute it’s path in the following command:

**Dism /Online /Cleanup-Image /RestoreHealth /Source:wim:Full Path to install.wim file:1**

(for example: Dism /Online /Cleanup-Image /RestoreHealth /Source:wim:**H:\Sources\Install.wim**:1)

or if you have an .esd file

**Dism /Online /Cleanup-Image /RestoreHealth /Source:esd:Full Path to install.esd file:1**

It may take some fiddling to get these correct.  Sometimes inserted media won't be read, but mounting the ISO file itself (by double-clicking) to use as source will. Proofread closely, watch spacing, ask back if you need help or consult this guide to DISM:   [DISM - Repair Windows 10 Image - Windows 10 Forums](http://www.tenforums.com/tutorials/7808-dism-repair-windows-10-image.html "www.tenforums.com")

  
Once the image is repaired then the broken System files should repair by running again:

**Sfc /scannow**

11) If these still won't repair after running 3 times and performance problems persist I would do a [Windows 10 Repair Upgrade](http://answers.microsoft.com/en-us/insider/wiki/insider_wintp-insider_install/how-to-perform-a-repair-upgrade-using-the-windows/35160fbe-9352-4e70-9887-f40096ec3085 "answers.microsoft.com") which reinstalls Windows while keeping your files, apps and most settings in place, brings it up to the latest version and solves most problems.

[https://www.tomshardware.com/how-to/fix-windows-10-repair-install](https://www.tomshardware.com/how-to/fix-windows-10-repair-install "www.tomshardware.com")

12) Problems with the Start Menu and Task Bar can be fixed by [[How To] Re-register Start Menu In Windows 10](https://www.kapilarya.com/re-register-start-menu-windows-10 "www.kapilarya.com").  Many other troubleshooters are at Settings > Update & Security > Troubleshoot > Additional Troubleshooters.  Type Control Panel in Start Search, choose Icon View, then Troubleshooting, at top left View All to see many more.

13) Run a full [Disk Check](http://www.howtogeek.com/howto/windows-vista/guide-to-using-check-disk-in-windows-vista/ "www.howtogeek.com"), if necessary from the Command Prompt.  For problems with Hard Drive or SSD run the maker's [Hard Drive Testing Tools.](https://www.lifewire.com/free-hard-drive-testing-programs-2626183 "www.lifewire.com")  If none for your HD brand then run [SeaTools for Windows](http://www.sevenforums.com/tutorials/313457-seatools-dos-windows-how-use.html "www.sevenforums.com") or boot [SeaTools from a USB Drive.](http://blog.nowherelan.com/2013/04/04/boot-seatools-off-of-a-usb-drive/ "blog.nowherelan.com")   Check for newer SSD firmware.  Type Disk in Start Search to Defragment Hard Drives and Optimize SSD's.  

14) Do the rest of the hardware tests here to make sure it's not a hardware issue:

[https://answers.microsoft.com/en-us/windows/forum/all/hardware-tests-2023/121921ee-59d9-43af-b7af-6b0fd92567a3](https://answers.microsoft.com/en-us/windows/forum/all/hardware-tests-2023/121921ee-59d9-43af-b7af-6b0fd92567a3 "answers.microsoft.com")

15) Analyze repeat Errors in the Event Viewer as explained here:  [How to Troubleshoot Problems in Windows Via Event Viewer.](https://www.pcmag.com/news/353803/how-to-troubleshoot-problems-in-windows-via-event-viewer "www.pcmag.com")   You can zero in on processes (including Startup processes) that are causing problems following [How to use Process Explorer, Microsoft's free, supercharged Task Manager alternative](https://www.pcworld.com/article/3181348/how-to-use-process-explorer-microsofts-free-supercharged-task-manager-alternative.html "www.pcworld.com") 

16) Many problems with Windows 10 are due to account corruption. Test for account corruption by creating a new Local Admin account in Settings > Accounts > Family & Other People > Other, as shown here: [https://www.isumsoft.com/windows-10/3-ways-to-create-administrator-account-in-windows-10.html](https://www.isumsoft.com/windows-10/3-ways-to-create-administrator-account-in-windows-10.html "www.isumsoft.com") Sign into the new account, test if the problem persists, if not then move your files over via C:\Users. Apps are installed to all Users so they should be no problem. You can change the new account to your Microsoft account if desired in Settings > Accounts > Your Info > Sign in with a Microsoft Account Instead. [https://www.tenforums.com/tutorials/5375-switch-microsoft-account-windows-10-a.html](https://www.tenforums.com/tutorials/5375-switch-microsoft-account-windows-10-a.html "www.tenforums.com")

It may also be necessary to enable the built-in hidden Administrator used only in emergencies to create the new account as shown here:

[Enable or Disable Elevated Administrator account in Windows 10](https://www.tenforums.com/tutorials/2969-enable-disable-elevated-administrator-account-windows-10-a.html "www.tenforums.com")

Afterwards be sure to hide the account again.

17) If serious problems persist you can open the [Windows 10 Installation Media](http://www.microsoft.com/en-us/software-download/windows10 "www.microsoft.com") for your version on the desktop to [perform a repair upgrade using the Windows 10 ISO file,](http://answers.microsoft.com/en-us/insider/wiki/insider_wintp-insider_install/how-to-perform-a-repair-upgrade-using-the-windows/35160fbe-9352-4e70-9887-f40096ec3085 "answers.microsoft.com") also a good way to apply the latest Windows 10 software version which will always be available in [Media Creation Tool.](http://windows.microsoft.com/en-us/windows-10/media-creation-tool-install "windows.microsoft.com")  

18) This will resolve most problems, but if not you can also run the automated [Reset](https://www.tenforums.com/tutorials/4130-reset-windows-10-a.html "www.tenforums.com") to reinstall the OS but you'll need to reinstall your personal programs afterwards.  Do a deep-clean Reset saving nothing so it sets up your account again in case it's corrupted, and choose the Cloud option so it downloads fresh installation files first.

19) What we're seeing in Windows 10 is that everything depends on the quality of the install, so if you want to invest in the very best install of all do this gold-standard [Clean Install Windows 10](http://answers.microsoft.com/en-us/windows/wiki/windows_10-windows_install/clean-reinstall-windows-10-upgradefactory-oem/1c426bdf-79b1-4d42-be93-17378d93e587 "answers.microsoft.com") which clears the hard drive to get it cleanest..  You will get and keep the best possible install to the exact extent you stick with the steps, tools and methods in the link.  I will assist you in the Comments section there.

20) If problems persist please start a new thread with a descriptive title in Performance forum, describe problems in detail including any pictures using **Attach Image** button in reply box or screenshots following how-to [Screenshot using Snipping Tool](http://windows.microsoft.com/en-us/windows-10/open-snipping-tool-and-take-a-screenshot "windows.microsoft.com").  You can even [Record steps to reproduce a problem - Windows Help](https://support.microsoft.com/en-us/help/22878 "support.microsoft.com").  We will try to help you resolve any remaining problems until you have a perfectly running install. 

If you'd like to ask a question about these steps or ask for my help in your thread, ask or provide a link in Comments below.  I do my best to answer same or next day.

## Diagram

```mermaid
graph LR
  
```

## Checklist

### Step 1

## Conclusion

***

## Appendix

*Note created on [[2024-04-22]] and last modified on [[2024-04-22]].*

### Backlinks

```dataview
LIST FROM [[Checklist - Windows Performance and Installation Integrity]] AND -"CHANGELOG" AND -"//Checklist - Windows Performance and Installation Integrity"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
