mdataextr.time <- function(n.included.ft=100.1607,mdextraction.day=16.7,mdextraction.checked=0){
  mdextraction <- n.included.ft / mdextraction.day * ( 1 + ( mdextraction.checked / 100 ) )
  return(mdextraction)
}
