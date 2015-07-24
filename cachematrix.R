
## Assignment 2 - by JSIM-Coder

## These functions create special matrix object that can cache their inverse
##  
##      The inverse of the Matrix is solved the first time it is called
##      Subsequent calls return the cache - saving a solve() calculation
##      
## Input requires a square / invertible matrix


## Special Matrix Object Constructor
makeCacheMatrix <- function(x = matrix()) {
    matrx <- x          # Matrix
    invmatrx <- NULL    # Its Inversion 
    
    # Set a new value for the matrix
    setmatrix <- function(y) {
        matrx <<- y
        invmatrx <<- NULL
    }
    
    # return the values of the matrix
    getmatrix <- function() {matrx}
    
    # solve the inverse if NULL or return cached matrix
    getinv <- function() {
        if(is.null(invmatrx)){ 
            invmatrx <<- solve(matrx)
            return(invmatrx)
        }
        message("returning cache")
        return(invmatrx)
    }
    
    # return all matrix manipulation functions in a list 
    list(setmatrix = setmatrix, getmatrix = getmatrix,
         getinv = getinv)      
}

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    ## 1. takes a special matrix object
    ## 2. computes inverse or returns the caches inverse if it already exists
    return(x$getinv())   
}






