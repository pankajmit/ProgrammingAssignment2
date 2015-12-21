## This functions will cache the mean of the Matrix and keep it in the memory
## functions do

## Write a short comment describing this function - updated by Pankaj

makeCacheMatrix <- function(x = matrix()) {

  InverseMatrix <- NULL
  setMatrix <- function(y) {
    x <<- y
    InverseMatrix <<- NULL
  }
  getMatrix <- function() x
  setInverseMatrix <- function(InputMatrix) InverseMatrix <<- InputMatrix
  getInverseMatrix <- function() InverseMatrix
  list(setMAtrix = setMatrix, getMatrix = getMatrix,
       setInverseMatrix = setInverseMatrix,
       getInverseMatrix = getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  InvertedMatrix <- x$getInverseMatrix()
  if(!is.null(InvertedMatrix)) {
    message("getting cached data")
    return(InvertedMatrix)
  }
  data <- x$getInverseMatrix()
  InvertedMatrix <- solve(data)
  x$setInverseMatrix(InvertedMatrix)
  InvertedMatrix
}
