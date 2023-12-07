#' @title title Plot Function
#'
#' @description
#' Plots graph of the absolute values of correlations of
#' x variables to the y variable, with highest correlations on top
#'
#' @param x an object of class ryx
#'
#' @import ggplot2
#'
#' @return graph
#' @export
#'
#' @examples
#' x <- ryx(mtcars, y="mpg")
#' plot(x)



plot.ryx <- function(x) {
    df <- x$df

    df$sign <- ifelse(df$r >= 0, "positive", "negative")
    df$absr <- abs(df$r)
    df$variable <- factor(df$variable, levels = df$variable[order(df$absr)])

    ggplot2::ggplot(df, aes(x = absr, y = variable, absr)) +
        geom_point(aes(color = sign)) +
        geom_segment(aes(x = 0, xend = absr, yend = variable), color = "gray") +
        labs(x = "Correlation (absolute value)", y = "Variables") +
        scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, 0.1)) +
        scale_color_manual(values = c("red", "blue")) +
        ggtitle(paste("Correlations with", x$y)) +
        theme_bw()
}

