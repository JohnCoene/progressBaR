#' Set type
#'
#' Change default type of progress bar from \code{line} to \code{circle} or \code{semi-circle}
#'
#' @param p an object of class \code{progressBar} as returned by \code{link{progressBar}}
#'
#' @name type
NULL

#' @rdname type
#' @export
progressLine <- function(p){
  p$x$type <- "line"
  p
}

#' @rdname type
#' @export
progressCircle <- function(p){
  p$x$type <- "circle"
  p
}

#' @rdname type
#' @export
progressSemi <- function(p){
  p$x$type <- "semicircle"
  p
}
