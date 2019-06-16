#' Number of records retrieved successfully
#'
#' This function calculates the number of records that are successfully
#' retrieved in a systematic review, based on the inputs of the number of
#' records remaining after abstract screening ('inclabstracts.number', see
#' 'inclabstracts.number' function) and the percentage of records retained
#' through this retrieval stage ('retrieval.retained'). Default values are
#' provided based on the empirical study of environmental systematic
#' reviews by Haddaway and Westgate (2018) https://doi.org/10.1111/cobi.13231.

retrieval.number <- function(inclabstracts.number=310.1662,retrieval.retained=150.9){
  n.retrieved <- inclabstracts.number * ( retrieval.retained / 100 )
  return(n.retrieved)
}
