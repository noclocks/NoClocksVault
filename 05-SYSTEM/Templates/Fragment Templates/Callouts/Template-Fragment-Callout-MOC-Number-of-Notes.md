> [!NOTE]
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length`**  individual notes in the `<% tp.file.folder(true) %>` folder, including this note.*

```dataviewjs
let pages = dv.pages("#Topic/<% (tp.file.title).replace("MOC - ", "") %>").where
```