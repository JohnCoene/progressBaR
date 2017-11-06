# progressBaR

R htmlwidget for [progressBar.js](https://kimmobrunfeldt.github.io/progressbar.js/)

## Installation

``` r
# install.packages("devtools")
devtools::install_github("JohnCoene/progressBaR")
```

## Example

``` r
library(progressBar)

progressBar(0.75)

progressBar(0.4) %>% 
  progressCircle()
```
