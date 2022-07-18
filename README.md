
# R-documentcloud
R library for DocumentCloud API

Initial code available in an R script. CRAN package TBD.

## To-do list
- [ ] Align function names/functionality with [Python wrapper](https://documentcloud.readthedocs.io/en/latest/)
- [ ] Add function for single document upload
- [ ] Better documentation of functions
- [ ] Formalize as R package
- [ ] Submit to CRAN
- [ ] Formal documentation

## Functions

### Main functions

#### dc_auth

Function to do initial authentication with DocumentCloud API using username and password.

**Usage**
```R
TK
```

#### dc_refresh_token

Function to refresh authentication tokens.

**Usage**
```R
TK
```

#### upload_documents

Function to perform bulk upload of documents to DocumentCloud. Returns a dataframe of paths and destination urls. NOTE: must already be authenticated

**Usage**
```R
upload_documents(file_names, 208620, unlist(auth_response$refresh))
```

### Utility functions

#### bulk_put_request

Utility function to allow vectorization of multiple requests in a main function.

**Usage**
```R
TK
```

#### dupe_check

Utility function that accepts a dataframe and column to check for duplicates, and renames if a duplicate name is found.

**Usage**
```R
TK
```

#### check_filetype

Utility function to test for [valid filetype](https://www.documentcloud.org/help/tips#file-types-supported).

**Usage**
```R
TK
```

## Sources

* [`documentcloud` Python wrapper](https://documentcloud.readthedocs.io/en/latest/)
* [DocumentCloud API](https://www.documentcloud.org/help/api) documentation
* *[R Packages: Organize, Test, Document and Share Your Code](https://r-pkgs.org/)* by Hadley Wickham