#utility function to do initial authentication with dc api using username and password
#usage
#TODO: Add usage
dc_auth <- function(un, pw){
  #attempt authentication
  response <- httr::POST("https://accounts.muckrock.com/api/token/",
                   body = list(username = un,
                               password = pw)
  )

  #check status code
  if(response$status_code == 200){
    cat('✓  AUTHENTICATION SUCCESSFUL\n')
  }
  else{
    cat('✗  AUTHENTICATION ERROR:', response, '\n')
  }

  #return the content of the response
  return( httr::content(response) )
}
