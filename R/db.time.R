#' Time needed (in days) to search databases
#'
#' This function calculates the time needed to search bibliographic databases
#' in a systematic review, based on inputs of the number of databases searched
#' ('databases') and the number of databases that can be searched per day and
#' their results exported ('db.day'). Default values are provided based on
#' the empirical study of environmental systematic reviews by Haddaway and
#' Westgate (2018) https://doi.org/10.1111/cobi.13231.

db.time <- function(databases=9,db.day=4){
  database.searching <- databases / db.day
  return(database.searching)
}
