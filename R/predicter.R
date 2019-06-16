predicTER <- function(planning=20,protocol=5,administration=19,fte=1,db.time=2.25,greylit.time=3.333333,reflists=10,deduping=1.4,tscreen.time=10.94552,abscreen.time=7.107977,retrieval.time=1.813837,ftscreen.time=11.70102,mdataextr.time=5.997647,ca.time=8.560744,dataextr.time=11.03219,dataprep.time=3.171755,synthesis=15,reportwriting=15,comms=10,meetings=4){
  time <- (planning+protocol+administration+db.time+greylit.time+reflists+deduping+tscreen.time+abscreen.time+retrieval.time+ftscreen.time+mdataextr.time+ca.time+dataextr.time+dataprep.time+synthesis+reportwriting+comms+meetings)/fte
  return(time)
}
predicTER()
