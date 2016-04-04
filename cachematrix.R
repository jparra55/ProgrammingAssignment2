## This script has the two functions required in order to complete the programming assignment 2, above the functions is a brieg description of what the functions do.

## This function sets and gets a matrix, also calculates the inverse of the given matrix 2 X 2, and gets the result.

makeCacheMatrix <- function(x = matrix()) {
     i <- NULL
     set <- function(y) {
          x <<- matrix(y, 2, 2)
          i <<- NULL
     }
     get <- function() x
     setinv <- function(solve) i <<- solve
     getinv <- function() i
     
     list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## This function calculates (if it hasn't been calculated) the inverse of the matrix created with the function above and print the result in the console, if the inverse has already been calculated, the function prints the result.

cacheSolve <- function(x, ...) {
     i <- x$getinv()
     if (!is.null(i)) {
          print("The inverse has already been calculated")
          return(i)
     }
     m22 <- x$get()
     i <- solve(m22)
     x$setinv(i)
     i
}
