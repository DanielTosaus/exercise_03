RecursiveChocolate <- function(M, r, c){
  
  Mrows <- dim(M)[1]
  
  if(r == Mrows){
    
    return (M[r,c])
  }else{
    
    choco_count <- M[r,c]
    choco_r <- RecursiveChocolate(M, r+1, c)
    choco_c <- RecursiveChocolate(M, r+1, c+1)
    return (max(choco_r, choco_c)+choco_count)
  }
    
  
  
}

v1 <- c(2, 4, 1)
v2 <- c(9, 4, 7)

M <- array(c(v1, v2), dim=c(3,3))

RecursiveChocolate(M, 1, 1)


IterativeChocolate <- function(M, r, c){
  
  Mrows <- dim(M)[1]
  Mcols <- dim(M)[2]
  choco_count <- M[r,c]

  while(r < Mrows & c < Mcols){
    choco_r <- M[r+1, c]
    choco_c <- M[r+1, c+1]
    choco_count <- choco_count + max(choco_r, choco_c)

    if(choco_r>choco_c){
      r <- r+1
    }else{
      r <- r+1
      c <- c+1
    }
    
  }
  choco_count
}
IterativeChocolate(M, 1, 1)


