inclft.number <- function(n.retrieved=468.0408,ft.retained=21.4){
  n.included.ft <- n.retrieved * ( ft.retained / 100 )
  return(n.included.ft)
}
