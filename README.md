# inspectoRGadget

The goal of inspectoRGadget is to meet an urgent need spelled out in this [twitter plea](https://twitter.com/CausalKathy/status/999091807937028096)

## Installation

You can install the development version of `inspectoRGadget` from [github](https://www.github.com) with:

``` r
# install.packages("devtools")
devtools::install_github("adam-gruer/inspectoRGadget")
 
```

## Example

Step 1: **gadgetize** an installed package by calling `gogo_gadget_arms()`

``` r
library(inspectoRGadget)

gogo_gadget_arms("dplyr")
```

Step 2: **gogo_** all the things!
  here we gogo_filter the `beaver1` dataset to find when the critter was active
``` r
gogo_filter(beaver1, activ ==1)
```
### **Please note there are probably lots of reasons why this is not a good idea but neither Brains or Penny was around to stop us**

## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md).
By participating in this project you agree to abide by its terms.


