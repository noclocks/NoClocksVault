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
        tbl_js <- glue::glue(
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
           }"
        )
      
      })

    }
  )
```