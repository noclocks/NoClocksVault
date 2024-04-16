```dataview
TABLE file.folder AS Folder
WHERE file.cday = date(this.file.name) AND file.name != (this.file.name)
SORT file.folder ASC, file.name ASC
```