% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dupe_check.R
\name{dupe_check}
\alias{dupe_check}
\title{Utility to check for duplicates}
\usage{
dupe_check(df, col)
}
\arguments{
\item{df}{A dataframe to check for duplicates}

\item{col}{A column string to check for duplicates}
}
\value{
A dataframe with renamed values for any duplicate
}
\description{
Utility to check for duplicates
}
\examples{
test_list <- data.frame(file_name = c('foo1.pdf', 'foo2.pdf', 'foo3.pdf', 'foo2.pdf'))
dupe_check(test_list, 'file_name')
}
