ftscreen.time <- function(n.retrieved=468.0408,ft.day=44,ft.checked=10){
  ft.screening <- n.retrieved / ft.day * ( 1 + ( ft.checked / 100 ) )
  return(ft.screening)
}
