#' Set progressbar
#'
#' Create a progressbar
#'
#' @param value percentage: to pass less than \code{1}.
#' @param stroke.width width of stroke.
#' @param easing easing function.
#' @param duration animation duration.
#' @param trail.color color of trail.
#' @param trail.width width of trail.
#' @param color color of bar.
#' @param svg.width,svg.height width and height of svg.
#' @param color.from,color.to starting and ending color (optional) see examples.
#' @param width,height dimensions of container.
#' @param elementId id of container.
#'
#' @import htmlwidgets
#'
#' @export
progressBar <- function(value, stroke.width = 1, easing = "easeInOut", duration = 3500, trail.color = '#eee', trail.width = 1,
                        color = '#ffeb3b', svg.width = "100%", svg.height = "100%", color.from = NULL, color.to = NULL,
                        width = NULL, height = 8, elementId = NULL) {

  # forward options using x
  x = list(
    type = 'line',
    color = color,
    strokeWidth = stroke.width,
    easing = easing,
    duration = duration,
    trailColor = trail.color,
    trailWidth = trail.width,
    svgHeight = svg.height,
    svgWidth = svg.width,
    colorFrom = color.from,
    colorTo = color.to,
    value = value
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'progressBar',
    x,
    width = width,
    height = height,
    package = 'progressBaR',
    elementId = elementId
  )
}

#' Shiny bindings for progressBar
#'
#' Output and render functions for using progressBar within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a progressBar
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name progressBar-shiny
#'
#' @export
progressBarOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'progressBar', width, height, package = 'progressBaR')
}

#' @rdname progressBar-shiny
#' @export
renderProgressBar <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, progressBarOutput, env, quoted = TRUE)
}
