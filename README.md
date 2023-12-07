
# ryx

<!-- badges: start -->
<!-- badges: end -->


ryx package Contains 4 functions ryx, plot.ryx, summary.ryx, and print.ryx. The second, third, and fourth are functions for the ryx function, and take objects of ryx type as their parameter. They are generic functions 

## Installation

You can install the development version of ryx like so:

``` r
if(!require(remotes)){
 install.packages("remotes")
 }
remotes::install_github("samwheels04/ryx")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ryx)
x <- ryx(mtcars, y="mpg")
x
plot(x)
```

