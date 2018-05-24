
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis build
status](https://travis-ci.org/adam-gruer/inspectoRGadget.svg?branch=master)](https://travis-ci.org/adam-gruer/inspectoRGadget)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/adam-gruer/inspectoRGadget?branch=master&svg=true)](https://ci.appveyor.com/project/adam-gruer/inspectoRGadget)
[![Coverage
status](https://codecov.io/gh/adam-gruer/inspectoRGadget/branch/master/graph/badge.svg)](https://codecov.io/github/adam-gruer/inspectoRGadget?branch=master)

# inspectoRGadget

The goal of inspectoRGadget is to meet an urgent need spelled out in
this [twitter
plea](https://twitter.com/CausalKathy/status/999091807937028096)

![tweet call to arms](inst/screenshots/tweet_inspo.png
"The tweet that started it all")

## Installation

You can install the development version of `inspectoRGadget` from
[github](https://www.github.com) with:

``` r
# install.packages("devtools")
devtools::install_github("adam-gruer/inspectoRGadget")
 
```

## Example

Step 1: **gadgetize** an installed package by calling
`gogo_gadget_arms()` Wowsers\! All that package’s functions and objects
can now be used by typing `gogo_{function/object}`

``` r
library(inspectoRGadget)

gogo_gadget_arms("dplyr")
```

All those gogo\_s now live in your r session’s global environment. That
*is probably frowned upon* , I’d love to learn how to avoid doing that,
let me know if you already have a solution.

Step 2: **gogo\_** all the things\! here we `gogo_filter()` the
`beaver1` dataset to find when the critter was active

``` r
gogo_filter(beaver1, activ ==1)
#>   day time  temp activ
#> 1 346 1730 37.07     1
#> 2 346 1950 37.10     1
#> 3 346 2150 37.53     1
#> 4 346 2230 37.25     1
#> 5 346 2300 37.24     1
#> 6 347  340 37.15     1
```

### **Please note there are probably lots of reasons this is not a good idea but neither Brain nor Penny was around to stop us**

## Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree
to abide by its terms.
