
```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM #Topic/Dev 
WHERE file.name != this.file.name
SORT file.name asc
```