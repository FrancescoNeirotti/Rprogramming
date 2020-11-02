##scoping rules

lm <- function(x) {x*x}

# how to make function available everywhere. 
#yoiu need to define environemtn --> try search()

#environemnt can have multiple children. in case of free variable the value will be searche dinside the environment where it has been defned.
#if not found in environemnt --> start looking in parent environemnt. till global and empty environemnt so an error.





