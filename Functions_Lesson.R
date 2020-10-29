#functions

#Store as R object class "function": they can be nested and can be passed as argument to other functions.

myplot <- function(x, y, type = "l", ...) {
  
  plot(x, y, type=type, ...)
  #all the otehr remain the same! super to personalize.
  
  #the same ... can be used at the begin to indicate "lot of arguments before this" BUT they need to be explicity call
}

#andiamo avanti 

