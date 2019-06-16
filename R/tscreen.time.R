tscreen.time <- function(unique.articles=8497.706,titles.day=854,titles.checked=10){
  title.screening <- ( unique.articles / titles.day ) * ( 1 + ( titles.checked / 100 ) )
  return(title.screening)
}
