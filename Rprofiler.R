#Let's Begin


#suggest why long time to run code.
#timing functions and programs


system.time() #Take an expression and return the amount of time needed

library(parallel) #in order to parallelize the execution of the code

system.time(readLines("https://www.polito.it/"))

system.time({Metto tutto quello che voglio qui dentro anche multiple expression})

#OK, you know that X take long time: but now? how to act? and what if you have millions of rows, where to look?



Rprof(append = T) #start the profiler

x <- rnorm(1000)

summaryRprof() #it is needed to summarize the output and to make them readable.

str(Rprof)
