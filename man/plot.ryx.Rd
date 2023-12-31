% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.ryx.R
\name{plot.ryx}
\alias{plot.ryx}
\title{title Plot Function}
\usage{
\method{plot}{ryx}(x)
}
\arguments{
\item{x}{an object of class ryx}
}
\value{
graph
}
\description{
Plots graph of the absolute values of correlations of
x variables to the y variable, with highest correlations on top
}
\examples{
x <- ryx(mtcars, y="mpg")
plot(x)
}
