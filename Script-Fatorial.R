fatorial <- function(num){
  
  result <- 0
  vfat <- 0
  
  if (num <= 1){
    return (1)
  } else {
    vfat <- num * fatorial(num - 1)
  }
  
  return (vfat)
}

fatorial(4)
