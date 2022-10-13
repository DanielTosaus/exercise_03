BetterChange <- function(M, c){
  remaining <- M
  for(i in c){
    ncoin <- floor(remaining/i)
    if(ncoin > 0){
      print(paste("Give the customer ",as.character(ncoin), " coins with value ", as.character(i)))
      remaining <- remaining - (i*ncoin)
    }
  }
}

M <- 53
c <- c(10, 5, 2, 1)
BetterChange(M,c)
