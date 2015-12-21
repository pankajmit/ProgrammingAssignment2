## This file is created by pankajmit as part of coursera programming assignment 2


## This funcion creates a special vector for creating a list containing a function to 
## 1. Set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the Inverted Matrix
## 4. get the value of the Inverted Matrix

makeCacheMatrix <- function(x = matrix()) {

  InverseMatrix <- NULL
  setMatrix <- function(y) {
    x <<- y
    InverseMatrix <<- NULL
  }
  getMatrix <- function() x
  setInverseMatrix <- function(InputMatrix) InverseMatrix <<- InputMatrix
  getInverseMatrix <- function() InverseMatrix
  list(setMatrix = setMatrix, getMatrix = getMatrix,
       setInverseMatrix = setInverseMatrix,
       getInverseMatrix = getInverseMatrix)
}


## The following function returns the inverted matrix of the special "matrix" created with the above function
## It first checks to see if the inverted matrix is already available and cached. If yes, cached inverted matrix is returned.
## If no, inverse matrix is first calculated, saves it in cache and then return the inverted matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  InvertedMatrix <- x$getInverseMatrix()
  if(!is.null(InvertedMatrix)) {
    message("getting cached data")
    return(InvertedMatrix)
  }
  data <- x$getMatrix()
  InvertedMatrix <- solve(data)
  x$setInverseMatrix(InvertedMatrix)
  InvertedMatrix
}
