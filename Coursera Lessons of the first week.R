#Here we are again with coursera.

if(condition) {
  
  #d something
  
} else {
  
  #blabla
  
}

y <- if(condition) {
    
    #d something
    
  } else {
    
    #blabla
    
  } 
# in this case direct assigment. 

#################################################################################################################################

for(i in 1:10) {
  print(i)
}

x <- c("a", "b", "c")

for(i in seq_along(x)) {
  print(x[i])
}

for (letter in x) {
  print(letter)
}

############################################################################################
count <- 0

while (count < 10) {
  print(count)
  count <- count + 1
}

##########################################################

repeat {
  
  #repeat to infinite, need a break to interrupt
  break
  
  #dangerous because it does not have a strong rule as for
  # NEXT
  next() # skip something
  
  for (i in 1:100) {
    if (i < 20) {
      next() #skip the first 20 iteration
    }
    #blabla do something
    
  }
  
}


