inverte <- function(arrayInput) {
  arrayOutput <- c()
  ind <- length(arrayInput) 
  
  while (ind >0) {
    arrayOutput <- c(arrayOutput, arrayInput[ind])
    ind <- ind - 1
  }
  
  return (arrayOutput)
}

arrayInput <- c(1:10)
inverte (arrayInput)
