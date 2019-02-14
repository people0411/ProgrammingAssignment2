## Put comments here that give an overall description of what your
## functions do

## Trying to understand

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}	}


## Write a short comment describing this function

cachemean <- function(x, ...) {
  a <- x$getinv()
  if(!is.null(a)) {
    message("getting cached data")
    return(a)
  }
  data <- x$get()
  a <- mean(data, ...)
  x$setinv(a)
  a
}