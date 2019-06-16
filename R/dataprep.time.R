dataprep.time <- function(n.dextraction=76.12213,dprep.day=24,dprep.checked=0){
  dprep <- n.dextraction / dprep.day * ( 1 + ( dprep.checked / 100 ) )
  return(dprep)
}
