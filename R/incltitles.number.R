#' Number of titles included after title screening
#'
#' This function calculates the number of titles remaining after title
#' screening in a systematic review, based on the inputs of the number of
#' unique articles after duplicate removal ('uniqart.number', see
#' 'uniqart.number' function) and the percentage of titles retained
#' through this title screening stage ('titles.retained'). Default values
#' are provided based on the empirical study of environmental systematic
#' reviews by Haddaway and Westgate (2018) https://doi.org/10.1111/cobi.13231.

incltitles.number <- function(uniqart.number=8497.706,titles.retained=14.6){
  n.included.titles <- uniqart.number * ( titles.retained / 100 )
  return(n.included.titles)
}
