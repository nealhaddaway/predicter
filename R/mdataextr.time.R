#' Time needed to extract meta-data from relevant full texts
#'
#' This function calculates the time needed to extract meta-data (i.e.
#' descriptive information about the study) from all relevant full
#' texts in a systematic review, based on the inputs of the number
#' of included full texts ('inclft.number', see 'inclft.number'
#' function), the number of studies that can have their meta-data
#' extracted per day ('mdextraction.day'), and the percentage of all
#' studies that are double checked for consistency of meta-data
#' extraction ('mdextraction.checked'). Where full dual screening of
#' all records is used, this will equal a percentage of 100 abstracts
#' being checked. Default values are provided based on the empirical
#' study of environmental systematic reviews by Haddaway and Westgate
#' (2018) https://doi.org/10.1111/cobi.13231.

mdataextr.time <- function(inclft.number=100.1607,mdextraction.day=16.7,mdextraction.checked=0){
  mdextraction <- inclft.number / mdextraction.day * ( 1 + ( mdextraction.checked / 100 ) )
  return(mdextraction)
}
