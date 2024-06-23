```R
#' DT Buttons
#'
#' @param data data
#' @param filename filename
#' @param escape_cols columns to exclude due to being HTML
#'
#' @return HTML
#' @export
dt_bttns <- function(data, filename = "data", escape_cols = NULL) {

  export_cols <- c(1:(length(data) - 1))

  if (!is.null(escape_cols)) {
    export_cols <- setdiff(export_cols, -1 * escape_cols)
  }

  fileout <- paste0(filename, "-", Sys.Date())

  list(
    list(
      extend = "copy",
      text = '<i class="fa fa-paperclip"></i>',
      titleAttr = 'Copy',
      exportOptions = list(columns = export_cols,
                           modifier = list(selected = NULL))
    ),
    list(
      extend = "print",
      text = '<i class="fa fa-print"></i>',
      titleAttr = 'Print',
      autoPrint = FALSE,
      exportOptions = list(columns = export_cols,
                           modifier = list(selected = NULL))
    ),
    list(
      extend = "excel",
      text = '<i class="fa fa-file-excel-o"></i>',
      titleAttr = "Excel",
      title = fileout,
      exportOptions = list(columns = export_cols,
                           modifier = list(selected = NULL))
    ),
    list(
      extend = "csv",
      text = '<i class="fa fa-file-csv"></i>',
      titleAttr = "CSV",
      title = fileout,
      exportOptions = list(columns = export_cols,
                           modifier = list(selected = NULL))
    ),
    list(
      extend = 'pdf',
      text = '<i class="fa fa-file-pdf-o"></i>',
      titleAttr = 'PDF',
      orientation = 'landscape',
      pageSize = "LEGAL",
      download = 'open',
      title = fileout,
      exportOptions = list(columns = ":visible"),
      modifier = list(selected = NULL)
    ),
    list(
      extend = "colvis",
      text = '<i class = "fa fa-filter"></i>',
      titleAttr = "Column Visibility"
    ),
    list(
      extend = "pageLength",
      text = '<i class="fa fa-list"></i>',
      titleAttr = "Page Length"
    )
  )

}
```



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