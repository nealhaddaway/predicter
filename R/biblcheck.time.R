#' Time needed to conduct bibliographic checking
#'
#' This function calculates the time needed to screen the bibliographics
#' of a selection of other relevant literature reviews in a systematic
#' review, based on the inputs of the time needed for title screening,
#' abstract screening, retrieval and full text screening
#' ('tscreen.time', 'abscreen.time', 'retrieval.time', and 'ftscreen.time'
#' respectively, see relevant function), the number of
#' unique search results after de-duplication ('uniqart.number'), and the
#' number of literature reviews whose reference lists are checked for
#' relevant records at all stages ('reflists'). This function assumes an
#' average of 50 references per reference list, but this value can be
#' changed via 'bibliography.volume'. Where full dual screening of all
#' records is used, this will equal a percentage of 100 abstracts being
#' checked. Default values are provided based on the empirical study of
#' environmental systematic reviews by Haddaway and Westgate (2018)
#' https://doi.org/10.1111/cobi.13231.

biblcheck.time <- function (tscreen.time=10.94552,abscreen.time=7.107911,retrieval.time=1.813837,ftscreen.time=11.70102,uniqart.number=8497.06,reflists=10,bibliography.volume=50){
  bibliographic.checking <- ( tscreen.time + abscreen.time + retrieval.time + ftscreen.time ) / uniqart.number * reflists * bibliography.volume
  return(bibliographic.checking)
}
