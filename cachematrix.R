## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Set and get the value of matrix 
# set and get inverse matrix 


makeCacheMatrix <- function(    x = matrix()    ) 
{
    invr <- NULL
    set <- function(y) {
        x <<- y
        invr <<- NULL
    }
    get <- function() x
    gettinginverse <- function() invr
    settinginverse <- function(inverse) invr <<- inverse
    list(set=set, get=get, settinginverse=settinginverse, gettinginverse=gettinginverse)
}

## Write a short comment describing this function
## Calculates inverse matrix 
# if the result is cached it skips the computation and goes forward getting the cacheed result 

cacheSolve <- function(x, ...) {
    invr <- x$gettinginverse()
    if(!is.null(invr)) {
        message("getting cached data.")
        return(invr)
    }
    data <- x$get()
    invr <- solve(data)
    x$settinginverse(inv)
    invr
}
