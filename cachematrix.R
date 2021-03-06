## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- funciton(y) {
    x <<- y
    j <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j
  lists(set = set, get = get, 
        setInverse = setInverse,
        getInverse = getInverse)
}

## makeCacheMatrix is used to set j as the inverse of matrix x

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)) {
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat, ...)
  x$setInverse(j)
  j
}

