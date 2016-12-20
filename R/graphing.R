#' Minimal ggplot2 theme using the Roboto Condensed and Roboto Bold fonts
#'
#' @param ... Arguments passed to \code{theme_minimal}
#'
#' @details The Roboto Condensed and Roboto Bold fonts are both Google fonts;
#' they can be found at \url{https://fonts.google.com/specimen/Roboto+Condensed}
#' and \url{https://fonts.google.com/specimen/Roboto}. These fonts must be
#' installed locally on your computer for this theme to work.
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(wt, mpg)) +
#'     geom_point() +
#'     theme_roboto()
#'
#' @export
theme_roboto <- function(...) {
    ret <- theme_minimal(base_family = "RobotoCondensed-Regular", ...)
    ret$plot.title <- ggplot2::element_text(family="Roboto-Bold")
    ret
}
