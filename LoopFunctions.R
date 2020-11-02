# Week 3 - Daje!


#lapply, sapply, m apply etc. are different loopfunction present in R
# very useful and compact

# lapply: use a function over a list per each element.

#LAPPLY ----------------------------------------------

x <- list(a = 1:5, b = rnorm(10))

lapply(x, mean) #give a list in output. Name are preserved

y <- 1:4

lapply(y, runif)

lapply(y, runif, min = 0, max = 10)

z <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))

z

lapply(z, function(elt) elt[,1]) #posso defuinire la funzione dentro ! "anonymous function"

#SAPPLY ---------------------------------------------------------------------
#simplyfy output di apply. instead of list may be return a vector if list of 1 element per each position of the same class

sapply(x, mean)

# APPLY ----------------------------------
#apply function over margins of array

str(apply)

x <- matrix(rnorm(200), 20, 10)

apply(x, 2, mean) #faccio la media delle righe e ritorno 1 riga 10 colonne
apply(x, 1, sum) # con 1 invece faccio sulle colonne, ottengo valori tanti quante righe

 #there are other function ofr these rowsum, rowmeans etc.

apply(x, 1, quantile, probs = c(0.25, 0.75))

a <- array(rnorm(2 * 2 * 10), c(2,2,10))

apply(a, c(1,2), mean)
rowMeans(a, dims = 2)

## MAPPLY ----------------------------------------------------------






