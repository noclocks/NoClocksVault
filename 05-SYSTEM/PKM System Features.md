- [x] Native Desktop and Mobile Apps: 
	- [x] Windows
	- [x] macOS
	- [x] iOS
	- [x] Android
- [x] Plain Text, Local-first Notes that can be available offline
- [x] Markdown Based
- [x] Ability to Extend Functionality with Plugins
- [x] Fast Performance
- [x] Fast Synchronization Between Devices
- [x] Fast Search Capabilities
- [x] Extensive Community
- [x] Unlimited Folder Hierarchy
- [x] Unlimited Tags Hierarchy
- [x] Attachment Management
- [x] Ability to Backup
- [x] Portability
- [x] Version Controlled
- [x] Collaborative
- [x] Ability to Manage Programmatically
- [x] Note Edit History
- [x] Global Hotkey
- [x] Transparency (and Modern UI/UX)
- [x] External Sharing
- [x] Publishing Capabilities
- [x] Web Clipper
- [x] Quick Save Selected Text

## Notes

### Windows Native App

As [Obsidian](../03-AREAS/Obsidian/_README.md) is an [Electron](../04-RESOURCES/Tools/Tool%20-%20Electron.md) app, it is essentially running as a [Progressive Web Application (PWA)](../04-RESOURCES/Definitions/Acronyms/Progressive%20Web%20Application%20(PWA).md) on top of [Chromium](../04-RESOURCES/Tools/Tool%20-%20Chromium.md). This means that if you are have [Frontend](../04-RESOURCES/Checklists/Checklist%20-%20Frontend%20Design.md) [programming](../04-RESOURCES/Definitions/Dictionary/Definition%20-%20Development.md) skills, you can debug Obsidian on the fly, including core functionality and third-party plugins. Just press `Ctrl + Shift + I` and debug it as you are doing as a front-end developer.

### Fast Performance

- Works great, even with many plugins
- Mobile (iOS) not so much

### Offline Note Availability

Core feature of Obsidian. As notes are kept in your filesystem, so you don’t depend on Internet connection at all.

### Synchronization

> [!TIP] See Also:
> - [Synchronization](../04-RESOURCES/Definitions/Dictionary/Definition%20-%20Synchronization.md)

Out of the box, there is no native, free ability to sync. However, the Obsidian team provided the [**Obsidian Sync**](https://obsidian.md/sync) service which works great, but costs $10 per month.

There are some [limitations](https://help.obsidian.md/Obsidian+Sync/Limitations) also.

#### Custom Solutions

- [Syncthing](Tool%20-%20Syncthing) (https://syncthing.net/):

### Fast Search

Search in Obsidian is fast on Windows, and relatively fast on iOS. However I found that actually I look for content not so often. I rely mostly on my note names. And searching by note names is even faster.

#### Quick Switcher

> [!TIP] See Also
> [Quick Switcher Obsidian Plugin](Plugin%20-%20Quick%20Switcher) which is a [core plugin](../03-AREAS/Obsidian/Plugins/Obsidian%20-%20Core%20Plugins.md).


#### Folder Notes

> [!TIP] See Also
> [Folder Notes Obsidian Plugin](Plugins/Plugin%20-%20Folder%20Note.md): 

[Quick Switcher Obsidian Plugin](Plugin%20-%20Quick%20Switcher) has some flaws: 

- You can’t navigate with it to folders
 
To overcome this I use community plugin the [Folder Note](Folder%20Note) plugin (https://github.com/aidenlx/alx-folder-note).

This plugin allows creating **Folder Notes**. I add folder notes for all my folders. The easiest way to do that is to `Ctrl + Click` on the folder in Explorer pane. Now I can use **Quick Switcher** to navigate to the folder. Default naming is a bit odd:  `Folder/folder.md` but still I find it useful for navigating via **Quick Switcher**.

#### HotKeys

Ok, now we can navigate to the folder using **Quick Switcher** but the main purpose of doing it is to quickly look through the notes in this folder. For that we need to use the following command `File explorer: Reveal active file in navigation`. To run commands we can use [Command Palette](https://help.obsidian.md/Plugins/Command+palette) or just press `Ctrl + P`. However, if you use certain command very often, calling it from the **Command Palette** is too annoying. Luckily, Obsidian allows to assign hotkeys for any commands.