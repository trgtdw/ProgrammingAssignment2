## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ma<-NULL
        set<-function(y){
                x<<-y
                ma<<-NULL
        }
        get<-function()x
        setma<-function(inverse)ma<<-inverse
        getma<-function(){
                inver<-gma(x)
                inver%*%x
                }
        list(set=set,get=get,
             setma=setma,
             getma=getma)                                        
}

## Write a short comment describing this function

cacheSolve<-function(x,...){
        ma<-x$getma()
        if(!is.null(ma)){
                message("getting cache data!")
                return(ma)
        }
           data<-x$get()
           ma<-solve(data,...)
           x$setma(ma)
           ma
}
