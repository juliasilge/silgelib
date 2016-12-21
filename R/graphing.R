#' Minimal ggplot2 theme using the Roboto Condensed and Roboto Bold fonts
#'
#' @param base_size base font size
#' @param ... Other arguments passed to \code{theme_minimal}
#'
#' @details The Roboto Condensed and Roboto Bold fonts are both Google fonts;
#' they can be found at \url{https://fonts.google.com/specimen/Roboto+Condensed}
#' and \url{https://fonts.google.com/specimen/Roboto}. These fonts must be
#' installed locally on your computer for this theme to work.
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(wt, mpg)) +
#'     geom_point() +
#'     labs(title = "A Lovely Plot",
#'          subtitle = "What can the subtitle tell us?") +
#'     theme_roboto()
#'}
#'
#' @export
theme_roboto <- function(base_size = 11, ...) {
    ret <- ggplot2::theme_minimal(base_family = "RobotoCondensed-Regular", ...)
    ret$plot.title <- ggplot2::element_text(family="Roboto-Bold",
                                            size = rel(1.2),
                                            hjust = 0, vjust = 1,
                                            margin = margin(b = base_size / 2 * 1.2)
                                            )
    ret
}
