
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rdocumentcloud

<!-- badges: start -->
<!-- badges: end -->

The rdocumentcloud package is an R wrapper for the DocumentCloud API.

[Valid
filetypes](https://www.documentcloud.org/help/tips#file-types-supported).

A work in progress.

## Installation

You can install the development version of rdocumentcloud from
[GitHub](https://github.com/MuckRock/rdocumentcloud).

``` r
# install.packages("devtools")
devtools::install_github("MuckRock/rdocumentcloud")
```

## Usage

``` r
library(rdocumentcloud)

#Function to do initial authentication with DocumentCloud API using username and password.
auth_response <- dc_auth('username@email.com', 'my_secret_password')
#> x  AUTHENTICATION ERROR: 401

#Function to perform bulk upload of documents to DocumentCloud. Returns a dataframe
# of paths and destination urls. NOTE: must already be authenticated
upload_documents(file_names, 111111, unlist(auth_response$refresh))
#> ...BEGINNING UPLOAD AT SEPTEMBER 11, 2022 16:45:44 PM 
#> x  AUTHENTICATION ERROR: 400 
#> x  EXITING AFTER 0.06 SECONDS
#> # A tibble: 0 × 2
#> # … with 2 variables: id <chr>, canonical_url <chr>
```

<!--## Example

This is a basic example which shows you how to solve a common problem:

```{r example} (this executes)
library(rdocumentcloud)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`? You can include R chunks like so:


```r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

 You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this. You could also use GitHub Actions to re-render `README.Rmd` every time you push. An example workflow can be found here: <https://github.com/r-lib/actions/tree/v1/examples>.-->

## Sources

-   [`documentcloud` Python
    wrapper](https://documentcloud.readthedocs.io/en/latest/)
-   [DocumentCloud API](https://www.documentcloud.org/help/api)
    documentation
-   Example package: [Kyle Walker’s
    tidycensus](https://github.com/walkerke/tidycensus)
-   *[R Packages: Organize, Test, Document and Share Your
    Code](https://r-pkgs.org/)* by Hadley Wickham
