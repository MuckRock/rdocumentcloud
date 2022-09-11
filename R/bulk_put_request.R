#' Utility to vectorize multiple requests
#'
#' @param presigned_url A vector of URLs presigned by Document Cloud
#' @param src A vector of paths to documents to upload
#'
#' @return A content response
#' @export
#'
#' @examples
#' bulk_put_request('http://documentcloud.org/document_is_here', './documents/document_to_upload.pdf' )
bulk_put_request <- function(presigned_url, src){

  if(file.exists(src)) {
    httr::PUT(
      url = presigned_url,
      body = httr::upload_file(src, type = 'application/pdf')
    )
  }
  else{
    cat('x  ERROR:', src, 'DOES NOT EXIST\n')
  }
}
