#utility function to refresh authentication tokens
dc_refresh_token <- function(refresh_token){
  #attempt to refresh authentication
  response <- POST("https://accounts.muckrock.com/api/refresh/",
                   body = list(refresh = refresh_token)
  )

  #check status code
  if(response$status_code == 200){
    cat('...REFRESHING AUTHENTICATION\n')
  }
  else{
    cat('✗  AUTHENTICATION ERROR:', response, '\n')
  }

  #return the content of the response
  return( content(response) )
}
