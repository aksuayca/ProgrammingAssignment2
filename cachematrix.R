##  This operator allows us to set different variables in the different environments. Thus, we can create the cache system and use.
## 

## set function creates cache and get function retuns cache, setInverse function set the given value to the inverse. Finally, getInverse return to the inverse value.  

makeCacheMatrix <- function(x = matrix()) {
j<- NULL  
set<-function(y){
  x<<-y
  j<<-NULL
}
get<-function()x
setInverse <- function(inverse)j<<-inverse
getInverse<- function()j
list(set = set,get=get,
setInverse = setInverse,
getInverse = getInverse)
}


## Here we used the functions above. First,  it tries to get x function from the cache. in case of couldn't find x in the cache, it calculates inverse again and set the cache.  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
j<-x$getInverse()
if(!is.null(j)){
  message("getting cached data")
  return(j)
}
mat<-x$get()
j<-solve(mat,....)
x$setIverse(j)
j
}
