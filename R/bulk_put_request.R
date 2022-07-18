#utility function to allow vectorization of multiple requests in a main function
#usage
#TODO: Add usage
bulk_put_request <- function(presigned_url, src){
  httr::PUT(
    url = presigned_url,
    body = upload_file(src, type = 'application/pdf')
  )
}
