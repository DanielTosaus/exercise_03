
Hanoi <- function(n, from_peg, to_peg){
  
  if(n==1){
    print(paste("Move disc from peg ", as.character(from_peg), " to the peg ", as.character(to_peg)))
    return
  }else{
    
    empty_peg <- 6 - from_peg - to_peg
    Hanoi(n-1, from_peg, empty_peg)
    print(paste("Move disc from peg ", as.character(from_peg), " to the peg ", as.character(to_peg)))
    Hanoi(n-1, empty_peg, to_peg)
  }
  
  
}

Hanoi(5, 1, 3)
