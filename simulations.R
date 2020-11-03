#simulating numbers


rnorm() #siulate normal random variable given mean and standard deviation 
dnorm() # normal porbability density
pnorm() #cumulative distribution from normal
qnorm() #quantile 

#r, d, p, q

set.seed(1) # activating seed and then random generation. everytime set the seed R will give you back the same random 
            # very useful for REPLICATION!!!

rnorm(5)


# Linear model simulation -------------------------------------------------------

set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0 , 2)
y <- 0.5 + 2*x + e

summary(y)

plot(x,y)


set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0 , 2)
y <- 0.5 + 2*x + e

summary(y)

plot(x,y)


set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3*x
y <- rpois(100, exp(log.mu))

summary(y)

plot(x,y)

### ----------- Random samplig -------------------------------------------------

set.seed(1)
sample(1:10, 4)
sample(letters, 5)
sample(1:10, replace = T)






=======
>>>>>>> e721f22d9226f26496ac1f9e56442ed322b098c5





