```R
#' Document a Dataset
#'
#' @description
#' This function generates a `roxygen2` skeleton for documenting a dataset.
#'
#' @param data_obj (Required) The dataset to document. Should be a `data.frame`
#'   or `tibble`.
#' @param name (Optional) The name of the dataset. Default is `DATASET_NAME` if
#'   not provided.
#' @param description (Optional) A description of the dataset. Default is
#'   `DATASET_DESCRIPTION` if not provided.
#' @param source (Optional) The source of the dataset. Default is `DATASET_SOURCE`
#'   if not provided.
#' @param col_types (Optional) A character vector of column types. Default is
#'   the types of the columns in the dataset.
#' @param col_descs (Optional) A character vector of column descriptions. Default
#'   is `COLUMN_DESCRIPTION` for each column.
#' @param file (Optional) The file to write the documentation to. Default is
#'   `R/data.R`.
#' @param append (Optional) Append to the file if it exists. Default is `TRUE`.
#'   If `FALSE`, the file will be overwritten, unless `overwrite` is `TRUE`, then
#'   the function does not write to a file.
#' @param overwrite (Optional) Overwrite the file if it exists. Default is `FALSE`.
#' @param ... Additional arguments
#'
#' @return Invisibly returns a character string with the `roxygen2`
#'   documentation skeleton for the dataset.
#' @export
#'
#' @importFrom fs path
#' @importFrom purrr map_chr
#' @importFrom glue glue
#'
#' @examples
#' data(mtcars)
#' document_dataset(
#'   mtcars,
#'   name = "mtcars",
#'   description = "Motor Trend Car Road Tests",
#'   source = "Henderson and Velleman (1981)",
#'   col_descs = c(
#'     "Miles/(US) gallon",
#'     "Number of cylinders",
#'     "Displacement (cu.in.)",
#'     "Gross horsepower",
#'     "Rear axle ratio",
#'     "Weight (1000 lbs)",
#'     "1/4 mile time",
#'     "V/S"
#'   ),
#'   file = fs::path_temp("mtcars.R")
#' )
#'
#' file.edit(fs::path_temp("mtcars.R"))
document_dataset <- function(
    data_obj,
    name = "DATASET_NAME",
    description = "DATASET_DESCRIPTION",
    source = "DATASET_SOURCE",
    col_types = purrr::map_chr(data_obj, typeof),
    col_descs = rep("COLUMN_DESCRIPTION", length(names(data_obj))),
    file = fs::path("R", "data.R"),
    append = TRUE,
    overwrite = FALSE,
    ...
) {

  # Ensure column names are available
  col_names <- names(data_obj)
  if (is.null(col_names)) {
    stop("The data object must have column names.")
  }

  # Validate col_types
  if (missing(col_types) || is.null(col_types)) {
    col_types <- purrr::map_chr(data_obj, typeof)
  }

  # Validate col_descs
  if (missing(col_descs) || is.null(col_descs)) {
    col_descs <- rep("COLUMN_DESCRIPTION", length(col_names))
  }

  # Ensure col_types and col_descs match the number of columns
  stopifnot(
    length(col_types) == length(col_names),
    length(col_descs) == length(col_names)
  )

  # Generate column descriptions
  col_roxys <- glue::glue(
    .open = "[[",
    .close = "]]",
    "#'   \\item{\\code{[[col_names]]}}{[[col_types]]. [[col_descs]].}"
  ) |> paste(collapse = "\n")

  # Determine dataset dimensions
  dims <- paste0(nrow(data_obj), " rows and ", ncol(data_obj), " columns")

  # Prepare roxygen2 documentation skeleton
  pre <- glue::glue(
    .sep = "\n",
    "#' {name}",
    "#'",
    "#' @description",
    "#' {description}",
    "#'",
    "#' @source",
    "#' {source}",
    "#'",
    "#' @format A data frame with {dims}:"
  )

  skeleton <- paste0(
    pre,
    "\n",
    "#' \\describe{\n",
    col_roxys,
    "\n",
    "#'}\n",
    '"', name, '"\n'
  )

  # Handle file writing based on append and overwrite flags
  if (overwrite && append) {
    stop("Cannot both append and overwrite. Please choose one.")
  }

  if (overwrite && file.exists(file)) {
    file.remove(file)
  }

  cat(skeleton, file = file, append = append, sep = "\n")
}

```