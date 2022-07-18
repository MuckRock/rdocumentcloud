
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rdocumentcloud

<!-- badges: start -->
<!-- badges: end -->

The goal of rdocumentcloud is to …

## Installation

You can install the development version of rdocumentcloud like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(rdocumentcloud)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.

# R-documentcloud (OLD README BELOW)

R library for DocumentCloud API

Initial code available in an R script. CRAN package TBD.

## To-do list

-   [ ] Align function names/functionality with [Python
    wrapper](https://documentcloud.readthedocs.io/en/latest/)
-   [ ] Add function for single document upload
-   [ ] Better documentation of functions
-   [ ] Formalize as R package
-   [ ] Submit to CRAN
-   [ ] Formal documentation

## Functions

### Main functions

#### dc_auth

Function to do initial authentication with DocumentCloud API using
username and password.

**Usage**

``` r
TK
```

#### dc_refresh_token

Function to refresh authentication tokens.

**Usage**

``` r
TK
```

#### upload_documents

Function to perform bulk upload of documents to DocumentCloud. Returns a
dataframe of paths and destination urls. NOTE: must already be
authenticated

**Usage**

``` r
upload_documents(file_names, 208620, unlist(auth_response$refresh))
```

### Utility functions

#### bulk_put_request

Utility function to allow vectorization of multiple requests in a main
function.

**Usage**

``` r
TK
```

#### dupe_check

Utility function that accepts a dataframe and column to check for
duplicates, and renames if a duplicate name is found.

**Usage**

``` r
TK
```

#### check_filetype

Utility function to test for [valid
filetype](https://www.documentcloud.org/help/tips#file-types-supported).

**Usage**

``` r
TK
```

## Sources

-   [`documentcloud` Python
    wrapper](https://documentcloud.readthedocs.io/en/latest/)
-   [DocumentCloud API](https://www.documentcloud.org/help/api)
    documentation
-   *[R Packages: Organize, Test, Document and Share Your
    Code](https://r-pkgs.org/)* by Hadley Wickham
