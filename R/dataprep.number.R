dataprep.number <- function(n.dextraction=76.12213,dprep.retained=59.2){
  n.dprep <- n.dextraction * ( dprep.retained / 100)
  return(n.dprep)
}
