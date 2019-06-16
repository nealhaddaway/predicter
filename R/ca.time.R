ca.time <- function(n.mdataextraction=100.1607,ca.day=11.7,ca.checked=0){
  ca <- n.mdataextraction / ca.day * ( 1 + ( ca.checked / 100 ) )
  return(ca)
}
