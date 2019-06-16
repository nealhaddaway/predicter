incltitles.number <- function(unique.articles=8497.706,titles.retained=14.6){
  n.included.titles <- unique.articles * ( titles.retained / 100 )
  return(n.included.titles)
}
