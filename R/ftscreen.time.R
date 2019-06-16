#' Time needed to screen retrieved full texts
#'
#' This function calculates the time needed to screen the full texts of
#' the records that could be successfully retrieved in a systematic
#' review, based on the inputs of the number of retrieved records
#' ('retrieval.number', see 'retrieval.number' function), the number of
#' full texts that can be screened per day ('ft.day'), and the
#' percentage of all full texts that are double checked for consistency
#' ('ft.checked'). Where full dual screening of all records is used,
#' this will equal a percentage of 100 abstracts being checked. Default
#' values are provided based on the empirical study of environmental
#' systematic reviews by Haddaway and Westgate (2018)
#' https://doi.org/10.1111/cobi.13231.

ftscreen.time <- function(retrieval.number=468.0408,ft.day=44,ft.checked=10){
  ft.screening <- retrieval.number / ft.day * ( 1 + ( ft.checked / 100 ) )
  return(ft.screening)
}
