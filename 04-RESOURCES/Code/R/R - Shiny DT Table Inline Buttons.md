
```R
dt_tbl_prep <- shiny::reactive({
  req(shiny_dataset())

  dat <- shiny_dataset()
  ids <- 1:nrow(dat)

  dt_inline_btns <- purrr::map_chr(
    ids,
    function(id) {
      glue::glue(
        '<div class="btn-group" style="width: 75px;" role="group" aria-label="button group">
        <button class="btn btn-primary btn-sm edit_btn" data-toggle="tooltip" data-placement="top" title="Edit" id = {id} style="margin: 0"><i class="fa fa-pencil-square-o"></i></button>
        <button class="btn btn-danger btn-sm delete_btn" data-toggle="tooltip" data-placement="top" title="Delete" id = {id} style="margin: 0"><i class="fa fa-trash-o"></i></button>
      </div>'
      )
    }
  )

  cbind(tibble::tibble("Actions" = dt_inline_btns), dat)
})
```