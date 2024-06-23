```R
db_buttons <- function(
  download_file_name,
  append_date = TRUE,
  dt_buttons = c("copy", "print", "csv", "excel", "pdf"),
  text = "Download"
) {

  if (append_date) { download_file_name <- paste0(download_file_name, Sys.Date()) }

  buttons <- list(
    extend = 'collection',
    buttons = list(
      list(extend = 'csv'  , filename = file_name) ,
      list(extend = 'excel'  , filename = file_name) ,
      list(extend = 'pdf' , filename = file_name)
    ),
    text = text
  )

}
```