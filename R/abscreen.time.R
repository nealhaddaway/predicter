abscreen.time <- function(n.included.titles=1240.665,abstracts.day=192,abstracts.checked=10){
  abstract.screening <- n.included.titles / abstracts.day * ( 1 + ( abstracts.checked / 100 ) )
  return(abstract.screening)
}
