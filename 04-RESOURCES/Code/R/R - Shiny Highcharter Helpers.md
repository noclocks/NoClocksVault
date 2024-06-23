```R
hc_opts <- function() {
  eval.parent({
    hcoptslang <- getOption("highcharter.lang")
    hcoptslang$thousandsSep <- ","
    options(highcharter.lang = hcoptslang)
    options(highcharter.rjon = TRUE)
  })
}

#' @importFrom htmlwidgets JS
hc_btn_options <- function(){

  list(
    contextButton = list(
      text = "Download",
      x = -25,
      menuItems = list(
        list(
          text = "Export to PDF",
          onclick = htmlwidgets::JS(
            "function () { this.exportChart({
          type: 'application/pdf'
          }); }"
          )
        ),
        list(
          text = "Export to Image",
          onclick = htmlwidgets::JS(
            "function () {
          this.exportChart(null, {
          chart: {
          backgroundColor: '#FFFFFF'
          },
          });
          }"
          )
        ),
        list(
          textKey = 'downloadCSV',
          onclick = htmlwidgets::JS("function () {
                     this.downloadCSV();
                     }")
        )
      )
    )
  )

}

#' @importFrom htmlwidgets JS
data_labels_dollar_formatter <- function() {

  htmlwidgets::JS(
    "function() {
  var y_val = this.y
  if (y_val > 1000000) {
    y_val = y_val / 1000000
    y_val = Math.round(y_val * 10) / 10
    y_val = y_val + 'M'
 } else if (y_val > 1000) {
    y_val = y_val / 1000
    y_val = Math.round(y_val * 10) / 10
    y_val = y_val + 'K'
   } else if (y_val > 1.1) {
    y_val = y_val
    y_val = Math.round(y_val * 1000) / 1000
    y_val = y_val
   } else {
    y_val = Math.round(y_val * 1000) / 1000
  }
  return y_val
}"
  )

}

#' @importFrom htmlwidgets JS
data_labels_rate_formatter <- function() {

  htmlwidgets::JS(
    "function() {
         return Math.round(this.y * 100) / 100
      }"
  )

}

tooltip_formatter_number <- function() {
  '<span style="color:{point.color};font-weight:bold">\u25CF {series.name}: </span>{point.y:,.0f}<br/>'
}

tooltip_formatter_rate <- function() {
  '<span style="color:{point.color};font-weight:bold">\u25CF {series.name}: </span>{point.y:,.3f}<br/>'
}

tooltip_formatter_dollar <- function() {
  '<span style="color:{point.color};font-weight:bold">\u25CF {series.name}: </span>{point.y:,.0f}<br/>'
}

#' @importFrom htmlwidgets JS
tooltip_formatter <- function() {

  htmlwidgets::JS("function() {
  //console.log('this', this.points[0])
  var points = this.points

  var ys = []
  var y = null
  ys = points.map(function(el) {
    var out = null
    y = el.y
    if (y > 1000000) {
      out = Math.round(y / 100000) / 10
      out = out.toLocaleString('en-US', {minimumFractionDigits: 1, maximumFractionDigits: 1})
      out = out + 'M'
    } else if (y > 1000) {
      out = Math.round(y / 100) / 10
      out = out.toLocaleString('en-US', {minimumFractionDigits: 1, maximumFractionDigits: 1})
      out = out + 'K'
    } else if (y > 2) {
      out = y.toLocaleString('en-US', {minimumFractionDigits: 0, maximumFractionDigits: 0})
    } else {
      out = y.toLocaleString('en-US', {minimumFractionDigits: 2, maximumFractionDigits: 2})
    }

    return out
  })
  //console.log('ys2', ys)

  var html_out = '<b>' + this.x.name + ':</b><br/>'
  var last_metric = ''

  var i;
  for (i = 0; i < points.length; i++) {

    if (points[i].series.userOptions.my_metric !== last_metric) {
      html_out += '<b>' + this.points[i].series.userOptions.my_metric + ' :<b><br/>'
      last_metric = this.points[i].series.userOptions.my_metric
    }

    html_out += '<span style=\"color:' + points[i].color + '\">\u25CF ' + points[i].series.userOptions.my_group + ': </span>' + ys[i] + '<br/>'
  }

  return html_out
}"
  )

}
```

```R
# in server
shiny_data <- shiny::reactiveValues(
  data_dictionary = datadict,
  r_data = mydataset,
  display_data = NULL
)

# whenever r_data changes, update display_data using datadict
display_data_init <- shiny::eventReactive(shiny_data$r_data, {
  shiny_data$r_data |>
    apply_labels(dict = shiny_data$data_dictionary, dataset_name = "mydataset")
})
```