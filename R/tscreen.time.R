#' Time needed to screen titles of unique search results
#'
#' This function calculates the time needed to screen the unique titles of
#' search results compiled across all searched resources in a systematic
#' review, based on the inputs of the number of unique articles
#' ('uniqart.number', see 'uniqart.number' function), the number of titles
#' that can be screened per day ('titles.day'), and the percentage of all
#' titles that are double checked for consistency ('titles.checked'). Where
#' full dual screening of all records is used, this will equal a percentage
#' of 100 titles being checked. Default values are provided based on
#' the empirical study of environmental systematic reviews by Haddaway and
#' Westgate (2018) https://doi.org/10.1111/cobi.13231.

tscreen.time <- function(uniqart.number=8497.706,titles.day=854,titles.checked=10){
  title.screening <- ( uniqart.number / titles.day ) * ( 1 + ( titles.checked / 100 ) )
  return(title.screening)
}
