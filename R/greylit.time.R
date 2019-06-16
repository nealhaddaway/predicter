#' Time needed (in days) to search grey literature resources
#'
#' This function calculates the number of days needed to search for
#' grey literature in a systematic review, based on inputs of the number
#' of grey literature resources searched (i.e. organisational websites/
#' online repositories; 'greylit'), the number of resources for grey
#' literature that can be searched per day ('greylit.day'), and the number
#' of days taken for additional searching (e.g. hand searching libraries,
#' specific journals and other resources; 'add.search'). Default values are provided based on
#' the empirical study of environmental systematic reviews by Haddaway and
#' Westgate (2018) https://doi.org/10.1111/cobi.13231.

greylit.time <- function(greylit=16,greylit.day=12,add.search=2){
  greylit.searching <- (greylit / greylit.day) + add.search
  return(greylit.searching)
}
