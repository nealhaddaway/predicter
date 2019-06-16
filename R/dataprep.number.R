#' Number of records remaining after data preparation
#'
#' This function calculates the number of records remaining after data preparation
#' (i.e. calculating effect sizes and variability estimates, like standard error)
#' in a systematic review, based on the inputs of the number of records remaining
#' after full data extraction ('dataextr.number', see 'dataextr.number'
#' function) and the percentage of records retained through this data preparation
#' stage ('ca.retained'). Default values are provided based on the empirical study
#' of environmental systematic reviews by Haddaway and Westgate (2018)
#' https://doi.org/10.1111/cobi.13231.

dataprep.number <- function(dataextr.number=76.12213,dprep.retained=59.2){
  n.dprep <- dataextr.number * ( dprep.retained / 100)
  return(n.dprep)
}
