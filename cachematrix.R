# makeCacheMatrix stores a matrix object and its inverse assuming the 

#matrix is invertible

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
    }


# cacheSolve computes return the inverse if it pre existant or compute 

#an return the inverse of the matrix assuming the matrix being invertible


cacheSolve <- function(x,...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
  }
  data <- x$get()
  inv <- solve(data)
  return(inv)
}
