mdataextr.number <- function(n.included.ft=100.1607,mdextraction.retained=100){
  n.mdataextraction <- n.included.ft * ( mdextraction.retained / 100 )
  return(n.mdataextraction)
}
