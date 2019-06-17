#' Time needed to screen abstracts of relevant titles
#'
#' This function calculates the time needed to screen all abstracts of
#' the titles deemed to be relevant at the previous stage in a systematic
#' review, based on the inputs of the number of relevant titles
#' ('incltitles.number', see 'incltitles.number' function), the number of
#' abstracts that can be screened per day ('abstracts.day'), and the
#' percentage of all abstracts that are double checked for consistency
#' ('abstracts.checked'). Where full dual screening of all records is used,
#' this will equal a percentage of 100 abstracts being checked. Default
#' values are provided based on the empirical study of environmental
#' systematic reviews by Haddaway and Westgate (2018)
#' https://doi.org/10.1111/cobi.13231.

abscreen.time <- function(incltitles.number=1240.665,abstracts.day=192,abstracts.checked=10){
  abstract.screening <- incltitles.number / abstracts.day * ( 1 + ( abstracts.checked / 100 ) )
  return(abstract.screening)
}
