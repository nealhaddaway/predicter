#' Calculate time needed for a systematic review
#'
#' This function calculates the time needed to conduct a systematic review, based on
#' a range of input data (abstracts.checked,abstracts.day,abstracts.retained,add.search,
#' administration,ca.checked,ca.day,ca.retained,comms,databasesdb.day,deduping,
#' dextraction.checked,dextraction.day,dextraction.retained,dprep.checked,dprep.day,
#' ft.checked,ft.day,ft.retained,fte,greylit.searching,greylitgreylit.day,
#' mdextraction.checked,mdextraction.day,mdextraction.retained,meetings,orig.articles,
#' percent.unique,planning,protocol,reflists,reportwriting,retrieval.checked,
#' retrieval.day,retrieval.retained,synthesis,titles.checked,titles.day,titles.retained).

timecalc<-function(abstracts.checked,abstracts.day,abstracts.retained,add.search,administration,ca.checked,ca.day,ca.retained,comms,databasesdb.day,deduping,dextraction.checked,dextraction.day,dextraction.retained,dprep.checked,dprep.day,ft.checked,ft.day,ft.retained,fte,greylit.searching,greylitgreylit.day,mdextraction.checked,mdextraction.day,mdextraction.retained,meetings,orig.articles,percent.unique,planning,protocol,reflists,reportwriting,retrieval.checked,retrieval.day,retrieval.retained,synthesis,titles.checked,titles.day,titles.retained){
  time <-
    ( ( ( planning +
          protocol +
          ( databases / db.day ) +
          ( (greylit / greylit.day) + add.search ) +
          ( ( ( ( ( orig.articles * percent.unique / 100 ) / titles.day ) * ( 1 + ( titles.checked / 100 ) ) ) +
                ( ( ( orig.articles * percent.unique / 100 ) * ( titles.retained / 100 ) ) / abstracts.day * ( 1 + ( abstracts.checked / 100 ) ) ) +
                ( ( ( ( orig.articles * percent.unique / 100 ) * ( titles.retained / 100 ) ) * ( abstracts.retained / 100 ) ) / retrieval.day * ( 1 + ( retrieval.checked / 100 ) ) ) +
                ( ( ( ( ( orig.articles * percent.unique / 100 ) * ( titles.retained / 100 ) ) * ( abstracts.retained / 100 ) ) * ( retrieval.retained / 100 ) ) / ft.day * ( 1 + ( ft.checked / 100 ) ) ) ) /
              ( orig.articles * percent.unique / 100 ) * reflists * 50 ) ) +
        deduping +
        ( ( ( orig.articles * percent.unique / 100 ) / titles.day ) * ( 1 + ( titles.checked / 100 ) ) ) +
        ( ( ( orig.articles * percent.unique / 100 ) * ( titles.retained / 100 ) ) / abstracts.day * ( 1 + ( abstracts.checked / 100 ) ) ) +
        ( ( ( ( orig.articles * percent.unique / 100 ) * ( titles.retained / 100 ) ) * ( abstracts.retained / 100 ) ) / retrieval.day * ( 1 + ( retrieval.checked / 100 ) ) ) +
        ( ( ( ( ( orig.articles * percent.unique / 100 ) * ( titles.retained / 100 ) ) * ( abstracts.retained / 100 ) ) * ( retrieval.retained / 100 ) ) / ft.day * ( 1 + ( ft.checked / 100 ) ) ) +
        ( ( ( ( ( ( orig.articles * percent.unique / 100 ) * ( titles.retained / 100 ) ) * ( abstracts.retained / 100 ) ) * ( retrieval.retained / 100 ) ) * ( ft.retained / 100 ) ) / mdextraction.day * ( 1 + ( mdextraction.checked / 100 ) ) ) +
        ( ( ( ( ( ( ( orig.articles * percent.unique / 100 ) * ( titles.retained / 100 ) ) * ( abstracts.retained / 100 ) ) * ( retrieval.retained / 100 ) ) * ( ft.retained / 100 ) ) * ( mdextraction.retained / 100 ) ) / ca.day * ( 1 + ( ca.checked / 100 ) ) ) +
        ( ( ( ( ( ( ( ( orig.articles * percent.unique / 100 ) * ( titles.retained / 100 ) ) * ( abstracts.retained / 100 ) ) * ( retrieval.retained / 100 ) ) * ( ft.retained / 100 ) ) * ( mdextraction.retained / 100 ) ) * ( ca.retained / 100 ) ) / dextraction.day * ( 1 + ( dextraction.checked / 100 ) ) ) +
        ( ( ( ( ( ( ( ( ( orig.articles * percent.unique / 100 ) * ( titles.retained / 100 ) ) * ( abstracts.retained / 100 ) ) * ( retrieval.retained / 100 ) ) * ( ft.retained / 100 ) ) * ( mdextraction.retained / 100 ) ) * ( ca.retained / 100 ) ) * ( dextraction.retained / 100 ) ) / dprep.day * ( 1 + ( dprep.checked / 100 ) ) ) +
        synthesis +
        reportwriting +
        comms + meetings ) / fte ) * ( 1 + ( administration / 100 ) )
  return(time)
}
