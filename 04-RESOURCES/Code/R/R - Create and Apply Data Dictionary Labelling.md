```R
#' Apply Labels
#'
#' @param data dataset to apply labeling on.
#' @param dict dictionary to use for application of labeling.
#' @param by character or integer - which column in \code{dict} defines the
#' columns in \code{data} corresponding to each section of the \code{dict}.
#' Defaults to "variable".
#' @param names_from column name or position defining where to match names from.
#' Defaults to "variable".
#' @param names_to column name or position defining replacements for
#' \code{names(data)}. Defaults to "variable_label".
#' @inheritParams matchmaker::match_df
#' @param dataset_name (optional) name of dataset to filter \code{dict} by
#' @param ... Passed to \code{\link[matchmaker]{match_df}}
#'
#' @return a labelled, display friendly [tibble][tibble::tibble-package]
#'
#' @export
#'
#' @importFrom dplyr filter mutate_if na_if
#' @importFrom matchmaker match_df
#' @importFrom rlang set_names
#' @importFrom stringr str_replace_all
#' @importFrom purrr walk2
#'
#' @examples
#' dictionary <- data.frame(
#'   var = c(rep("x1", 2),
#'           rep("x2", 3),
#'           rep("x3", 5)),
#'   var_lab = c(rep("Column 1", 2),
#'               rep("Column 2", 3),
#'               rep("Column 3", 5)),
#'   val = c(c(TRUE, FALSE),
#'           c(1:3),
#'           letters[1:5]),
#'   val_lab = c(c("YES", "NO"),
#'               paste0("Group ", c(1:3)),
#'               paste0("Area ", LETTERS[1:5]))
#' )
#'
#' dat <- data.frame(
#'   "x1" = rep(c(TRUE, FALSE), 15),
#'   "x2" = rep(c(1:3), 10),
#'   "x3" = rep(letters[1:5], 6)
#' )
#'
#' apply_labels(dat,
#'              dictionary,
#'              from = "val",
#'              to = "val_lab",
#'              by = "var",
#'              names_from = "var",
#'              names_to = "var_lab")
apply_labels <- function(data,
                         dict,
                         from = "value",
                         to = "value_label",
                         by = "variable",
                         names_from = "variable",
                         names_to = "variable_label",
                         dataset_name = NULL,
                         ...) {

  if (!is.null(dataset_name)) {

    dict <- dict %>%
      dplyr::filter(.data$dataset == dataset_name)

    globals <- dict %>% dplyr::filter(.data[[by]] == ".global")

  } else {

    dict <- dict
    globals <- NULL

  }

  suppressWarnings({

    hold <- matchmaker::match_df(
      data,
      dictionary = dict,
      from = from,
      to = to,
      by = by,
      ...
    )

    if (!is.null(globals) && nrow(globals) > 0) {
      purrr::walk2(globals$value, globals$value_label, function(x, y) {
        hold <<- hold %>%
          dplyr::mutate_if(is.character, stringr::str_replace_all,
                           pattern = x, replacement = y)
      })
    }

  })

  hold %>%
    rlang::set_names(
      dict[[names_to]][match(names(hold), dict[[names_from]])]
    ) %>%
    dplyr::mutate_if(is.character, dplyr::na_if, ".missing")
}


#' Reverse Labels
#'
#' Reverses \code{link[apply_labels()]}.
#'
#' @inheritParams apply_labels
#'
#' @return un-labeled, R-friendly [tibble][tibble::tibble-package]
#' @export
#' @importFrom dplyr filter
#' @importFrom matchmaker match_df
#' @importFrom purrr set_names
reverse_labels <- function(data,
                           dict,
                           from = "value",
                           to = "value_label",
                           by = "variable",
                           names_from = "variable",
                           names_to = "variable_label",
                           dataset_name = NULL,
                           ...) {

  if (!is.null(dataset_name)) {

    dict <- dict %>%
      dplyr::filter(.data$dataset == dataset_name)

    globals <- dict %>% dplyr::filter(.data[[by]] == ".global")

  } else {

    dict <- dict
    globals <- NULL

  }

  suppressWarnings({

    hold <- matchmaker::match_df(
      data,
      dictionary = dict,
      from = to,
      to = from,
      by = "variable_label",
      ...
    )

    if (!is.null(globals) && nrow(globals) > 0) {
      purrr::walk2(globals$value_label, globals$value, function(x, y) {
        hold <<- hold %>%
          dplyr::mutate_if(is.character, stringr::str_replace_all,
                           pattern = x, replacement = y)
      })
    }
  })

  hold %>%
    purrr::set_names(
      dict[[names_from]][match(names(hold), dict[[names_to]])]
    ) %>%
    dplyr::mutate_if(is.character, dplyr::na_if, ".missing")

}
```