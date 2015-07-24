
## This is a test program for Assignment 2

source("cachematrix.R")

# Create an invertible matrix
a <- rbind(c(1, -1/4), c(-1/4, 1))  

# create matrix constructor
b<-makeCacheMatrix(a)

# run the first time the inverse is solved
cacheSolve(b)

# run again and its cached
cacheSolve(b)

# Flush the cache by resetting the matrix
b$setmatrix(a)

# run the first time the inverse is solved
cacheSolve(b)

# run again and its cached
cacheSolve(b)

# and again....
cacheSolve(b)

b$getmatrix()
b$getinv
