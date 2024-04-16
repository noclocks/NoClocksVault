```dataview
TABLE file.folder AS Folder
WHERE file.mday = date(this.file.name) AND file.name != (this.file.name)
SORT file.mtime asc
```