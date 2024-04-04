```dataview
LIST
FROM <% tp.frontmatter.tags.map #Topic/ <% (tp.file.title).replace("MOC - ", "") %>
AND -"CHANGELOG"
AND -"<% tp.file.folder(true) %>/<% tp.file.title %>"
```