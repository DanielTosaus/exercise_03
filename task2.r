CZKChange <- function(M){
  remaining <- M
  # 50
  ncoin <- floor(remaining/50)
  if (ncoin > 0){
    print("Give the customer 50CZK coins: ")
    print(ncoin)
    remaining <- remaining - (50*ncoin)
  }
  
  
  # 20
  ncoin <- floor(remaining/20)
  if (ncoin > 0){
    print("Give the customer 20CZK coins: ")
    print(ncoin)
    remaining <- remaining - (20*ncoin)
  }
  
  # 10
  ncoin <- floor(remaining/10)
  if (ncoin > 0){
    print("Give the customer 10CZK coins: ")
    print(ncoin)
    remaining <- remaining - (10*ncoin)
  }
  
  # 5
  ncoin <- floor(remaining/5)
  if (ncoin > 0){
    print("Give the customer 5CZK coins: ")
    print(ncoin)
    remaining <- remaining - (5*ncoin)
  }
  
  # 1
  if(remaining>0){
    print("Give the customer 1CZK coins: ")
    print(remaining)
  }
  
  
}

CZKChange(134)

