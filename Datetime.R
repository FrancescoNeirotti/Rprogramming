# Date and times in R 

# date class represent date and time!
# POSIXct: large integer vector
# POSIXlt: store as a list, plus week day and other info


#

x <- as.Date("1970-01-01")
unclass(x) #quanti gironi dal giorno zero che è quello

weekdays(x)
months(x)
quarters(x)


y <- Sys.time()

p <- as.POSIXlt(y) 
unclass(p) #unclass ci da un sacco di info. Unclass di ct ci da solo numero di secondi.



datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")

z <- strptime(datestring, "%B %d, %Y %H:%M")

y - z #i can perform operations! IF SAME CLASS!!!







