retrieval.time <- function(n.included.abstracts=310.1662,retrieval.day=171,retrieval.checked=0){
  retrieval <- n.included.abstracts / retrieval.day * ( 1 + ( retrieval.checked / 100 ) )
  return(retrieval)
}
