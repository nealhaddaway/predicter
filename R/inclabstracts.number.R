inclabstracts.number <- function(n.included.titles=1240.665,abstracts.retained=25){
  n.included.abstracts <- n.included.titles * ( abstracts.retained / 100 )
  return(n.included.abstracts)
}
