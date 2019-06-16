#' Number of records remaining after critical appraisal
#'
#' This function calculates the number of records remaining after critical
#' appraisal (i.e. assessment of study internal and external validity) in a
#' systematic review, based on the inputs of the number of records remaining
#' after meta-data extraction ('mdataextr.number', see 'mdataextr.number'
#' function) and the percentage of records retained through this critical
#' appraisal stage ('ca.retained'). Default values are provided based on the
#' empirical study of environmental systematic reviews by Haddaway and Westgate
#' (2018) https://doi.org/10.1111/cobi.13231.

ca.number <- function(mdataextr.number=100.1607,ca.retained=76){
  n.ca <- mdataextr.number * ( ca.retained / 100 )
  return(n.ca)
}
