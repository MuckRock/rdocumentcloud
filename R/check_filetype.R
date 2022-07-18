#utility function to test for valid filetype
#https://www.documentcloud.org/help/tips#file-types-supported
#usage
#TODO: Add usage
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
