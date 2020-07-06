## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##set puts NULL elements in the Matrix
##get takes in new values of Matrix
##setInverse finds inverse of the Matrix
##getInverse returns the calculated inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x  <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- ufnction(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("Obtaining cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}
