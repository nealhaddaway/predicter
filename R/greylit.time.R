greylit.time <- function(greylit=16,greylit.day=12,add.search=2){
  greylit.searching <- (greylit / greylit.day) + add.search
  return(greylit.searching)
}
