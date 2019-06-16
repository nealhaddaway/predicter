#' Number of records remaining after meta-data extraction
#'
#' This function calculates the number of records remaining after meta-data
#' extraction in a systematic review, based on the inputs of the number of
#' records remaining after full text screening ('inclft.number', see
#' 'inclft.number' function) and the percentage of records retained
#' through this meta-data extraction stage ('mdextraction.retained'). Default
#' values are provided based on the empirical study of environmental systematic
#' reviews by Haddaway and Westgate (2018) https://doi.org/10.1111/cobi.13231.

mdataextr.number <- function(inclft.number=100.1607,mdextraction.retained=100){
  n.mdataextraction <- inclft.number * ( mdextraction.retained / 100 )
  return(n.mdataextraction)
}
