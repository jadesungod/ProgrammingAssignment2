makeCacheMatrix <- function(m = matrix()) {
	ivs <- NULL
	set <- funtion(n) {
		m <<- n
		ivs <<- NULL
	}
	
	get <- function(m) x
	setivs <- function(inverse) ivs <<- inverse
	getivs <- function() ivs
	
	list(set = set, get = get, setinverse = setivs, getinverse = getivs)
}

cachesolve <- function(x, ...) {
	ivs <- x$getivs()
	
	if (!is.null(inv)) {
		message("cached matrix exist!")
		return(ivs)
	}
	
	matrix1 <- x$get()
	ivs <- solve(matrix1)
	ivs
}
