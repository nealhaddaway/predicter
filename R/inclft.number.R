#' Number of full texts included after full text screening
#'
#' This function calculates the number of full texts remaining after full text
#' screening in a systematic review, based on the inputs of the number of
#' records remaining after retrieval ('retrieval.number', see
#' 'retrieval.number' function) and the percentage of full texts retained
#' through this full text screening stage ('ft.retained'). Default values are
#' provided based on the empirical study of environmental systematic reviews
#' by Haddaway and Westgate (2018) https://doi.org/10.1111/cobi.13231.

inclft.number <- function(retrieval.number=468.0408,ft.retained=21.4){
  n.included.ft <- retrieval.number * ( ft.retained / 100 )
  return(n.included.ft)
}
