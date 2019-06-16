biblcheck.time <- function (tscreen.time=10.94552,abscreen.time=7.107911,retrieval.time=1.813837,ftscreen.time=11.70102,uniqart.number=8497.06,reflists=10){
  bibliographic.checking <- ( tscreen.time + abscreen.time + retrieval.time + ftscreen.time ) / uniqart.number * reflists * 50
  return(bibliographic.checking)
}
