## Put comments here that give an overall description of what your
## functions do

## make a cache matrix

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinv <- function(inver) m <<- inver
	getinv <- function() m
	list(set = set, get = get,
		setinv = setinv,
		getinv = getinv)

}


## Solve the mean for the matrix x

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)){
        	message("getting cached data")
        	return(m)
        }
        message("solving the mean")
        data <- x$get()
		m <- solve(data)
        x$setinv(m)
        m
}
