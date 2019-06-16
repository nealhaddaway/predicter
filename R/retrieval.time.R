#' Time needed to retrieve full texts of relevant records
#'
#' This function calculates the time needed to retrieve the full texts of
#' the abstracts deemed to be relevant at the previous stage in a systematic
#' review, based on the inputs of the number of relevant abstracts
#' ('inclabstracts.number', see 'inclabstracts.number' function), the number of
#' records that can be retrieved per day ('retrieved.day'), and the
#' percentage of all retrievals that are double checked for consistency
#' ('retrieval.checked'). Where full dual screening of all records is used,
#' this will equal a percentage of 100 abstracts being checked. Default
#' values are provided based on the empirical study of environmental
#' systematic reviews by Haddaway and Westgate (2018)
#' https://doi.org/10.1111/cobi.13231.

retrieval.time <- function(inclabstracts.number=310.1662,retrieval.day=171,retrieval.checked=0){
  retrieval <- inclabstracts.number / retrieval.day * ( 1 + ( retrieval.checked / 100 ) )
  return(retrieval)
}
