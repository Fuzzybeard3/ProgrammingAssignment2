## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Caches the funcion for a matrix. Gives a vector of get and set for 
# the matrix and placeholder for the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
      m <<- NULL
      x <<- y
    }
    get <- funciton() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get, setinverse = setinverse, getinverse = geti)
    
}


## Write a short comment describing this function
# Calculates the inverse of the matrix, or retrives a previous inverse
# from the cache, given arguments from makeCacheMatrix
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
  data <- x$get()
  m <- solve(data) %*% data
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
