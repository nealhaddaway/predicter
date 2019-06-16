dataextr.number <- function(n.ca=76.12213,dextraction.retained=100){
  n.dextraction <- n.ca * ( dextraction.retained / 100 )
  return(n.dextraction)
}
