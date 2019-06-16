retrieval.number <- function(n.included.abstracts=310.1662,retrieval.retained=150.9){
  n.retrieved <- n.included.abstracts * ( retrieval.retained / 100 )
  return(n.retrieved)
}
