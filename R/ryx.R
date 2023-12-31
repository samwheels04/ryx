#' @title ryx Function
#'
#' @description
#' function that takes in data, y variable and x variables
#' and describes  correlations, p-values, and significance
#' of the y variable against the x variables
#'
#'
#' @param data A data frame.
#' @param y The dependent variable.
#' @param x A vector of independent variables.
#'
#' @return A summary of correlations, p-values, and significance.
#' @export
#'
#' @examples
#'
#' ryx(mtcars, y="mpg")
#'
ryx <- function(data, y, x){
    if(missing(x)){
        x <- names(data)[sapply(data, class)=="numeric"]
        x <- setdiff(x, y)
    }
    df <- data.frame()
    for (var in x){
        res <- cor.test(data[[y]], data[[var]])
        df_temp <- data.frame(variable = var,
                              r = res$estimate,
                              p = res$p.value)
        df <- rbind(df, df_temp)
        df <- df[order(-abs(df$r)),]
    }

    df$sigif <- ifelse(df$p < .001, "***",
                       ifelse(df$p < .01, "**",
                              ifelse(df$p < .05, "*", " ")))
    results <- list(y=y, x=x, df=df)
    class(results) <- "ryx"
    return(results)
}
