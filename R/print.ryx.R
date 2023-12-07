
# Print Function

#' @title Print Function
#'
#' @description
#' prints out data frame with variables and their correlations,
#' pvalues, and significance
#'
#'
#' @param x an object of class ryx
#'
#' @return data frame
#' @export
#'
#' @examples
#' library(MASS)
#' x <- ryx(Boston, y="medv")
#'

print.ryx <- function(x) {
    cat("Correlations of", x$y, "with\n")
    print(x$df[, c("variable", "r", "p", "sigif")])
}
