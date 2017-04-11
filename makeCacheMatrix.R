##cache the matrix
makeCacheMatrix <- function(m = matrix()) {    
	ivs <- NULL                    
	set <- funtion(n) {                             ##set the value of the matrix
		m <<- n
		ivs <<- NULL
	}
	
	get <- function(m) x                            ##get the value of the matrix
	setivs <- function(inverse) ivs <<- inverse     ##set the inverse of the matrix
	getivs <- function() ivs                        ##get the inverse of the matrix     
	
	list(set = set, get = get, setinverse = setivs, getinverse = getivs)
}

cachesolve <- function(x, ...) {
	ivs <- x$getivs()
	##check if the matrix is cached already
	if (!is.null(inv)) {             
		message("cached matrix exist!")
		return(ivs)                             ##skip the computation
	}
	##compute the inverse of the matrix
	matrix1 <- x$get()
	ivs <- solve(matrix1)
	ivs
}
