
IndexOfMin <- function(array, first, last){
  index <- first
  for(k in first+1: last)
  {

    if(array[k] < array[index]){
      
      index <- k
      print(index)
    }
    
  }
  print(index)
}
  
array <- c(5, 2, 7, 4, 1)
first <- 1
last <- 4
IndexOfMin(array, first, last)
