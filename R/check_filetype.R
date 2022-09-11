#' Utility to test for valid filetype
#'
#' @param path_list A list of paths to the document
#'
#' @return A list of valid extensions according to filetype
#' @export
#'
#' @examples
#' list_of_paths <- c('not_a_pdf.zip', 'is_a_pdf.pdf', 'is_a_jpeg.jpg')
#' check_filetype(list_of_paths)
check_filetype <- function(path_list){
  valid_filetypes <- c('\\.abw$','\\.zabw$','\\.pmd$','\\.pm3$','\\.pm4$','\\.pm5$',
                       '\\.pm6$','\\.p65$','\\.cwk$','\\.agd$','\\.fhd$','\\.kth$',
                       '\\.key$','\\.numbers$','\\.pages$','\\.bmp$','\\.csv$',
                       '\\.txt$','\\.cdr$','\\.cmx$','\\.cgm$','\\.dif$','\\.dbf$',
                       '\\.xml$','\\.eps$','\\.emf$','\\.fb2$','\\.gnm$','\\.gnumeric$',
                       '\\.gif$','\\.hwp$','\\.plt$','\\.html$','\\.htm$','\\.jtd$',
                       '\\.jtt$','\\.jpg$','\\.jpeg$','\\.wk1$','\\.wks$','\\.123$',
                       '\\.wk3$','\\.wk4$','\\.pct$','\\.mml$','\\.xls$','\\.xlw$',
                       '\\.xlt$','\\.xlsx$','\\.docx$','\\.pptx$','\\.ppt$','\\.pps$',
                       '\\.pot$','\\.pub$','\\.rtf$','\\.doc$','\\.dot$','\\.wps$',
                       '\\.wdb$','\\.wri$','\\.vsd$','\\.pgm$','\\.pbm$','\\.ppm$',
                       '\\.odt$','\\.fodt$','\\.ods$','\\.fods$','\\.odp$','\\.fodp$',
                       '\\.odg$','\\.fodg$','\\.odf$','\\.odb$','\\.sxw$','\\.stw$',
                       '\\.sxc$','\\.stc$','\\.sxi$','\\.sti$','\\.sxd$','\\.std$',
                       '\\.sxm$','\\.pcx$','\\.pcd$','\\.psd$','\\.pdf$','\\.png$',
                       '\\.qxp$','\\.wb2$','\\.wq1$','\\.wq2$','\\.svg$','\\.sgv$',
                       '\\.602$','\\.sdc$','\\.vor$','\\.sda$','\\.sdd$','\\.sdp$',
                       '\\.sdw$','\\.sgl$','\\.sgf$','\\.rlf$','\\.ras$','\\.svm$',
                       '\\.slk$','\\.tif$','\\.tiff$','\\.tga$','\\.uof$','\\.uot$',
                       '\\.uos$','\\.uop$','\\.wpd$','\\.xbm$','\\.xpm$','\\.zmf$')
  match_pattern <- paste0('^.*(',
                          paste(valid_filetypes, collapse='|'),
                          ')'
  )

  results <- sub(match_pattern, '\\1', path_list, ignore.case = TRUE)

  return(results)

}
