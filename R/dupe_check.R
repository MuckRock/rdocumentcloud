#' Utility to check for duplicates
#'
#' @param df A dataframe to check for duplicates
#' @param col A column string to check for duplicates
#'
#' @return A dataframe with renamed values for any duplicate
#' @export
#'
#' @examples
#' test_list <- data.frame(file_name = c('foo1.pdf', 'foo2.pdf', 'foo3.pdf', 'foo2.pdf'))
#' dupe_check(test_list, 'file_name')
dupe_check <- function(df, col){
  df[[col]] <- stats::ave(as.character(df[[col]]),
                   df[[col]], FUN=function(x) if (length(x)>1) paste0(x[1], '(', seq_along(x), ')') else x[1])
  return(df)
}
