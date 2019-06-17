#' Predict the time needed to conduct a systematic review
#'
#' This function uses other functions in the package to estimate the time
#' needed to conduct a systematic review. See other packages for details.
#' Other values not provided by other functions are the time (in days)
#' needed for: planning the review ('planning'); developing and writing
#' the systematic review protocol ('protocol'); synthesising
#' study findings ('synthesis'); writing the final systematic review
#' report ('reportwriting'); developing and releasing communications
#' media ('comms'); having meetings ('meetings'); the percentage full
#' time equivalent of the main staff member conducting all of the work
#' ('fte'); and the percentage of total project time spent on general
#' administration excluding meetings ('administration'). Default values
#' are provided based on the empirical study of environmental systematic
#' reviews by Haddaway and Westgate (2018) https://doi.org/10.1111/cobi.13231.

predict.time <- function(planning=20,protocol=5,administration=19,fte=1,db.time=2.25,greylit.time=3.333333,biblcheck.time=1.857601,deduping=1.4,tscreen.time=10.94552,abscreen.time=7.107977,retrieval.time=1.813837,ftscreen.time=11.70102,mdataextr.time=5.997647,ca.time=8.560744,dataextr.time=11.03219,dataprep.time=3.171755,synthesis=15,reportwriting=15,comms=10,meetings=4){
  time <- ((planning+protocol+db.time+greylit.time+biblcheck.time+deduping+tscreen.time+abscreen.time+retrieval.time+ftscreen.time+mdataextr.time+ca.time+dataextr.time+dataprep.time+synthesis+reportwriting+comms+meetings)/fte)*(1+(administration/100))
  return(time)
}
