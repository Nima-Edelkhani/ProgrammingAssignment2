## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 sol <- NULL
 get <- function() x
 set <- function(y) {
   x <<- y
   sol <<- NULL
 }
 getsol <- function() sol
 setsol <- function(solution) sol <<- solution
 list(set = set, get = get,
      setsol = setsol,
      getsol = getsol)
 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsol()
  if(!is.null(s)) {
    message("getting cached solution")
    return(s)
  }
  data <- x$get()
  s <- solve(data)
  x$setsol(s)
  s
}
