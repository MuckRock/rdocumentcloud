#' Authenticate DocumentCloud API
#'
#' @param un A username string
#' @param pw A password string
#'
#' @return The content of an httr response
#' @export
#'
#' @examples
#' auth_response <- dc_auth('documents_mcghee', 'my_password')
dc_auth <- function(un, pw){
  #attempt authentication
  response <- httr::POST("https://accounts.muckrock.com/api/token/",
                   body = list(username = un,
                               password = pw)
  )

  #check status code
  if(response$status_code == 200){
    cat('+  AUTHENTICATION SUCCESSFUL\n')
  }
  else{
    cat('x  AUTHENTICATION ERROR:', response$status_code, '\n')
  }

  #return the content of the response
  return( httr::content(response) )
}
