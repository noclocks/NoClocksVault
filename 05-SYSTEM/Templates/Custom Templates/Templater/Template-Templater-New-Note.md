<%*
  let title = tp.file.title
  if (title.startsWith("Untitled")) {
    title = await tp.system.prompt("Title")
    if (title==="" || title === null){
      console.error("Enter or Esc was pressed on prompt, will use default title")
      title = tp.file.title 
    } else {
      await tp.file.rename(title)
    }
  } 
  tR += "---"
%>
created:<%tp.date.now("YYYY-MMM-DD")%>
---

<HR style="border-color: RGBA(139, 108, 239 ,0.75)">

<%tp.file.cursor()%>




<HR style="border-color: RGBA(139, 108, 239 ,0.75)">

[[## SYSTEM TAGS|]]
#<%title[0].toUpperCase()%>