# IndexOfMin
IndexOfMin <- function(array, first, last){
  index <- first
  for(k in (first+1): last)
  {

    if(array[k] < array[index]){
      
      index <- k
      #print(index)
    }
    
  }
  index
}
  
array <- c(5, 2, 7, 4, 1)
first <- 1
last <- 5
IndexOfMin(array, first, last)

# SelectionSort
SelectionSort <- function(a, n){
  
  for(i in 1:(n-1)){
    # find minimun in range i, n
    sprintf("i: %d", i)
    j <- IndexOfMin(a, i, n)
    # swap indexes
    tmp <- a[i]
    a[i] <- a[j]
    a[j] <- tmp
  }
  a
}

SelectionSort(array, 5)


# Recursive sort
RecursiveSelectionSort <- function(a, first, last){
  if (first < last){
    index <- IndexOfMin(a, first, last)
    tmp <- a[first]
    a[first] <- a[index]
    a[index] <- tmp
    first <- first + 1
    a <- RecursiveSelectionSort(a, first, last)
  }
  a
}


RecursiveSelectionSort(array, 1, 5)




