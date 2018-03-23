## Put comments here that give an overall description of what your
## functions do

#get the value of the matrix, set and get the inverse matrix. 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { #define argument as matrix
inv <- NULL
set <- function(y){
	x <<- y
	inv <<- NULL
	}
get <- function() x

##set inverse variable in parent env to desired value and return the value at convenience list

setInverse <- function(inverse)  inv <<- inverse 
	getInverse <- function() inv
		list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
	}
	
## Write a short comment describing this function

##given the lust variable from the first function, will first check if there is a chached inverse and return it. 

cacheSolve <- function(x, x,...) {
	
	## Return a matrix that is the inverse of x
	calculatedInverse <- x$getInverse()
	inv <- x$getinverse()
	if(!is.null(inv)) {
		message("getting cached data")
		return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$setinverse(inv)
inv
}

