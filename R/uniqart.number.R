uniqart.number <- function(orig.articles=11786,percent.unique=72.1){
  unique.articles <- orig.articles * percent.unique / 100
  return(unique.articles)
}
