#data.table

library(data.table)

DF = data.frame(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))

head(DF, 3)

#NB different sintax for dataframe and datatable


DT = data.table(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))

  
DT[, list(mean(x),sum(z))] #?
DT[, w:= z^2]

is.data.table(DT)

# NB CON DATADATLE SE FACCIO DT2 <- DT, SE CAMBIO DT SUCCESSIVANTE CAMBIA ANCHE DT2! USA LA FUZIONE COPIA!!!

#MULTIPLE OPERATION

DT[, m:={tmp = x+z; exp(tmp)}] #performa operazione in ordine di riga separata da ;. NB TMP non viene creata nel global env
DT












