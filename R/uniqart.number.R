#' Number of unique articles after duplicate removal
#'
#' This function calculates the number of unique articles remaining in
#' a systematic review after results have been mergened across resources
#' and duplicates have been removed, based on the inputs of the total
#' number of search results across all resources ('original.articles')
#' and the percentage of results that are unique ('percent.unique').
#' The value of 'percent.unique' can be calculated easily from the inverse
#' of the duplication rate (i.e. 100 - duplication.rate). Default values are
#' provided based on the empirical study of environmental systematic reviews
#' by Haddaway and Westgate (2018) https://doi.org/10.1111/cobi.13231.

uniqart.number <- function(orig.articles=11786,percent.unique=72.1){
  unique.articles <- orig.articles * percent.unique / 100
  return(unique.articles)
}
