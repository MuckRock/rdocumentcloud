#utility function that accepts a dataframe and column to check for duplicates,
#and renames if a duplicate name is found
#usage
#dupe_check(test_list, 'title')
dupe_check <- function(df, col){
  df[[col]] <- ave(as.character(df[[col]]),
                   df[[col]], FUN=function(x) if (length(x)>1) paste0(x[1], '(', seq_along(x), ')') else x[1])
  return(df)
}
