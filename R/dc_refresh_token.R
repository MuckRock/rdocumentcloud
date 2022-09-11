#' Refresh authentication tokens
#'
#' @param refresh_token Content response of refresh toekn request
#'
#' @return Response of content request
#' @export
#'
#' @examples
#' refresh_token <- 'hErE_Is_A_rEfReSh_ToKeN'
#' refresh_auth <- dc_refresh_token(refresh_token)
dc_refresh_token <- function(refresh_token){
  #attempt to refresh authentication
  response <- httr::POST("https://accounts.muckrock.com/api/refresh/",
                   body = list(refresh = refresh_token)
  )

  #check status code
  if(response$status_code == 200){
    cat('...REFRESHING AUTHENTICATION\n')
  }
  else{
    cat('x  AUTHENTICATION ERROR:', response$status_code, '\n')
  }

  #return the content of the response
  return( httr::content(response) )
}
