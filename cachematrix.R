## Put comments here that give an overall description of what your
## functions do

## this function generates an matrix that is capable of storing 
## its inverse in cache

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## this function calculates the inverse of a matrix, and if no change 
## occurs in the matrix, it should retrieve the inverse from the cache.



cacheSolve <- function(x, ...) {
  invr <= x$getinverse()
  if(!is.null(invr)) {
    message("Getting Cached Data:-")
    return(invr)
  }
  matrx <- x$get()
  invr <- solve(matrx, ...)
  x$setinverse(invr)
  inv
}
