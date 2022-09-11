
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rdocumentcloud

<!-- badges: start -->
<!-- badges: end -->

The rdocumentcloud package is an R wrapper for the [DocumentCloud
API](https://www.documentcloud.org/help/api).

**Note:** This package is currently a work in progress. Want to help?
Check out our [projects
page](https://github.com/orgs/MuckRock/projects/2).

Currently useful for authenticating and bulk uploading documents to an
existing DocumentCloud project.

## Installation

You can install the development version of rdocumentcloud from
[GitHub](https://github.com/MuckRock/rdocumentcloud).

``` r
# install.packages("devtools")
devtools::install_github("MuckRock/rdocumentcloud")
```

## Usage

``` r
#load the package into your environment after installing it
library(rdocumentcloud)

#create a list of document paths to upload
file_names <- c('./path/to/file/document2020_file.pdf', './path/to/file/test_file13.jpg', './path/to/file/public_record.pdf')

#specify a DocumentCloud project ID number where you want to upload documents
project_id <- 200555

#Authenticate with DocumentCloud API using username and password.
auth_response <- dc_auth('username@email.com', 'my_secret_password')
#> x  AUTHENTICATION ERROR: 401

#Bulk upload of documents to DocumentCloud. Returns a dataframe
# of paths and destination urls. NOTE: must already be authenticated
dc_response <- upload_documents(file_names, project_id, unlist(auth_response$refresh))
#> ...BEGINNING UPLOAD AT SEPTEMBER 11, 2022 17:09:15 PM 
#> x  AUTHENTICATION ERROR: 400 
#> x  EXITING AFTER 0.035 SECONDS
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
