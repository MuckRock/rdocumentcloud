% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dc_auth.R
\name{dc_auth}
\alias{dc_auth}
\title{Authenticate DocumentCloud API}
\usage{
dc_auth(un, pw)
}
\arguments{
\item{un}{A username string}

\item{pw}{A password string}
}
\value{
The content of an httr response
}
\description{
Authenticate DocumentCloud API
}
\examples{
auth_response <- dc_auth('documents_mcghee', 'my_password')
}
