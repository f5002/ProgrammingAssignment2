## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

  s<<-x
  
  getInverse<-function(s){
    m<-solve(s)   ## Solve inverse of matrix
    m
  }
  cacheInverse <- function(s){
    m<<-solve(s)  ## Cache inverse of matrix
  }
  
  list(getInverse = getInverse, cacheInverse=cacheInverse)
}


# If the inverse has already been calculated, 
# then this function should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {

  if(!is.null(m)) {
    message("getting cached data")
    return(m)     ## Return cached inverse from original makeCacheMatrix function
  }
}
