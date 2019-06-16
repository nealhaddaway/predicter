#' Time needed to conduct critical appraisal on all included records
#'
#' This function calculates the time needed to conduct critical
#' appraisal (i.e. assess internal and external validity) on all
#' relevant records in a systematic review, based on the inputs of
#' the number of records passing the meta-data extraction stage
#' ('mdataextr.number', see 'mdataextr.number' function), the
#' number of studies that can be critically appraised per day
#' ('ca.day'), and the percentage of all studies that are double
#' checked for consistency of critical appraisal ('ca.checked').
#' Where full dual screening of all records is used, this will
#' equal a percentage of 100 abstracts being checked. Default
#' values are provided based on the empirical study of
#' environmental systematic reviews by Haddaway and Westgate
#' (2018) https://doi.org/10.1111/cobi.13231.

ca.time <- function(mdataextr.number=100.1607,ca.day=11.7,ca.checked=0){
  ca <- mdataextr.number / ca.day * ( 1 + ( ca.checked / 100 ) )
  return(ca)
}
