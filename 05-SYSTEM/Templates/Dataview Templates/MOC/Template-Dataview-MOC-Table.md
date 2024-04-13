```dataview
TABLE without ID file.link as "Note Title", file.mday as "Last Modified"
FROM <% tp.file.tags[1] %>
WHERE file.name != this.file.name
SORT file.name asc
```