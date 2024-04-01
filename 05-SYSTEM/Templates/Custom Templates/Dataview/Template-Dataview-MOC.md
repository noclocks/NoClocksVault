```dataview
LIST
FROM #Topic/<% (tp.file.title).replace("MOC - ", "") %>
AND -"CHANGELOG"
AND -"<% tp.file.folder(true) %>/<% tp.file.title %>"
```