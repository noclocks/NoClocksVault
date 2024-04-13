```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM "<% tp.file.folder(true) %>" AND -"<% tp.file.folder(true) %>/_README"
WHERE file.name != this.file.name
SORT file.name asc
```