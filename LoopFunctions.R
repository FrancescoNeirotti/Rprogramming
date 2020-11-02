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

#apply a function to multiple arguments (mutiple list for example)
str(mapply)

list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))

#can do

mapply(rep, 1:4, 4:1)


noise <- function(n, mean, sd) {
  rnorm(n, mean, sd)
}

noise(5,1,2)

mapply(noise, 1:5, 1:5, 2)

## TAPPLY -------------------------------------------------------

#appòy a function over subset of a vector.
str(tapply)

x <- c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3,10)

tapply(x, f, mean) #applica mean al vettore x agli indici f

## SPLIT ---------------------------------------------------------

#split a vector and apply fucntion to pieces
str(split)


split(x, f)

#f ha tre livelli, quindi divide in 3 e fa l'operazione

lapply(split(x, f), mean) #posso combinare: splitto, applico mean a tutti con lappy

library(datasets)
head(airquality)

s <- split(airquality, airquality$Month)

lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))

sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm = TRUE))

#splitting in more then one level

x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)

interaction(f1,f2)

str(split(x, list(f1,f2)))




str(split(x, list(f1,f2), drop = TRUE)) #elimino i livelli vuoti

















