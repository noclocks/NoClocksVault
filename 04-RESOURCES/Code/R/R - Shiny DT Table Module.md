```R
mod_datatbl_ui <- function(
  id,
  ...
) {

  ns <- shiny::NS(id)
  
  htmltools::tagList(
    
  )

}

mod_datatbl_server <- function(id) {
  shiny::moduleServer(
    id,
    function(input, outupt, session) {

      ns <- session$ns
      
      table_prep <- reactive({
        shiny::req()

      })

      output$tbl <- DT::renderDT({

        shiny::req(table_prep())
        dat <- table_prep()
        n_row <- nrow(dat)
        n_col <- length(dat)
        id <- ns(id)
        tbl_js <- paste0(
          "function(settings, json) {
            var filters = $('#", id, " td .form-group');
            // columns that should have visible filters
            var cols = [", paste(2:n_col, collapse = ", "), "];
            // hide certain column filters
            for (var i = 1; i <= filters.length; i++) {
              if (!cols.includes(i))
                filters.eq(i - 1).css('visibility', 'hidden');
              filters.eq(i - 1).css('position', 'static');
            }
          }")

       tbl_caption <- c(
         "Table Caption"
       )

       tbl_cols <- dat |> names()
       hidden_cols <- c()
       centered_cols <- dplyr::select_if(is.character, is.factor, is.logical) |>
         names()

       DT::datatable(
         dat,
         rownames = FALSE,
         colnames = cols,
         caption = cap,
         selection = "none",
         class = "stripe row-border compact", #
         callback = DT::JS('return table'),
         style = "bootstrap",
         escape = -1,
         extensions = c("Buttons", "Scroller"), #, "FixedColumns"),
         filter = "top",
         options = list(
           autoWidth = TRUE,
           scrollX = TRUE,
           scrollY = 500,
           dom = '<Bl>tip',
           lengthMenu = list(
             c(-1, 25, 50, 100),
             c("All", "25", "50", "100")
           ),
           columnDefs = list(
             list(visible = FALSE, targets = hide_cols),
             list(targets = 0, orderable = FALSE),
             list(className = "dt-center dt-col", targets = "_all")
           ),
           buttons = list(
             list(
               extend = "copy",
               text = '<i class="fa fa-paperclip"></i>',
               titleAttr = 'Copy',
               exportOptions = list(
                 columns = 1:(length(out) - 1),
                 modifier = list(selected = NULL)
               )          
            ),
            list(
              extend = "print",
              text = '<i class="fa fa-print"></i>',
              titleAttr = 'Print',
              autoPrint = FALSE,
              exportOptions = list(columns = 1:(length(out) - 1),
                                 modifier = list(selected = NULL))
            ),
            list(
              extend = "excel",
              text = '<i class="fa fa-file-excel-o"></i>',
              titleAttr = "Excel",
              title = paste0("Schedule-of-Values-", Sys.Date()),
              exportOptions = list(columns = 1:(length(out) - 1),
                                   modifier = list(selected = NULL))
            ),
            list(
              extend = "csv",
              text = '<i class="fa fa-file-csv"></i>',
              titleAttr = "CSV",
              title = paste0("Schedule-of-Values-", Sys.Date()),
              exportOptions = list(columns = 1:(length(out) - 1),
                                   modifier = list(selected = NULL))
            ),
            list(
              extend = 'pdf',
              text = '<i class="fa fa-file-pdf-o"></i>',
              titleAttr = 'PDF',
              orientation = 'landscape',
              pageSize = "LEGAL",
              download = 'open',
              title = paste0("Schedule-of-Values-", Sys.Date()),
              exportOptions = list(columns = ":visible"),
              modifier = list(selected = NULL)
            ),
            list(
            extend = "colvis",
            text = '<i class = "fa fa-filter"></i>',
            titleAttr = "Column Visibility"#,
            # postfixButtons = 'colvisRestore',
            # collectionLayout = "three-column" #,
            # columns = ':not(.showalways)'
          ),
          list(
            extend = "pageLength",
            text = '<i class="fa fa-list"></i>',
            titleAttr = "Page Length"
          )
        ),
        initComplete = DT::JS(js)
      )
    ) %>%
      DT::formatCurrency(c("Total Insured Value (TIV)"), digits = 0) %>%
      DT::formatString("Location", prefix = "Location ") %>%
      DT::formatString("Unit", prefix = "Unit ") %>%
      DT::formatString("Department", prefix = "Department ")
  })
       )
       

      })

    }
  )
```