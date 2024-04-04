```dataview
LIST
FROM <% tp.file.tags[1] %>
AND -"CHANGELOG"
AND -"<% tp.file.folder(true) %>/<% tp.file.title %>"
```