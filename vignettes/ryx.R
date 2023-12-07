## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(ryx)

## ----example------------------------------------------------------------------
library(ryx)
x <- ryx(mtcars, y="mpg")
print(x)
plot(x)
summary(x)

