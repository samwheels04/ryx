
# Summary Function

#' @title Summary Function
#'
#' @description
#' summarizes which variables are included, the median
#' and range of correlations, and the number of significant variables
#'
#'
#' @param x an object of class ryx
#'
#' @return 3 lines of text
#' @export
#'
#' @examples
#' x <- ryx(mtcars, y="mpg")
#' summary(x)
#'

summary.ryx <- function(ryx) {
    num_var <- length(ryx$df$p)
    count <- num_var
    for(i in num_var) {
        if (x$df$sigif[i] == " ") {
            count <- count - 1;
        }
    }
    cat("Correlating", ryx$y, "with", ryx$x)
    cat("\nThe median absolute correlation was", round(mean(abs(ryx$df$r)), 3),
        "with a range from", round(min(ryx$df$r), 3), "to", round(max(ryx$df$r), 3))
    cat("\n", count, "out of", num_var, "variables were significant at the p < 0.05 level.")
}

