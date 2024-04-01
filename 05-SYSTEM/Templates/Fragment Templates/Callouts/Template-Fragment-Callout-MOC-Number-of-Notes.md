> [!NOTE]
> *Currently, there are **`$= dv.pages('"#Topic/<% (tp.file.title).replace("MOC - ", "") %>"').length`**  individual notes with the `#Topic/<% (tp.file.title).replace("MOC - ", "") %>` tag, including this note.*

```dataviewjs
let pages = dv.pages("#Topic/<% (tp.file.title).replace("MOC - ", "") %>");
for 
```