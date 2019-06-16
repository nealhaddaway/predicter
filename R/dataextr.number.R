#' Number of records remaining after full data extraction
#'
#' This function calculates the number of records remaining after full data
#' extraction (i.e. study qualitative or quanitative fundings) in a systematic
#' review, based on the inputs of the number of records remaining after critical
#' appraisal ('ca.number', see 'ca.number' function) and the percentage of records
#' retained through this full data extraction stage ('dextraction.retained'). Default
#' values are provided based on the empirical study of environmental systematic
#' reviews by Haddaway and Westgate (2018) https://doi.org/10.1111/cobi.13231.

dataextr.number <- function(ca.number=76.12213,dextraction.retained=100){
  n.dextraction <- ca.number * ( dextraction.retained / 100 )
  return(n.dextraction)
}
