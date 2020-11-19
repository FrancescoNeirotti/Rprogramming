#Reading JSON

#similar to XML
{}

library(jsonlite) #this is the reference library

jsondata <- fromJSON("https://api.github.com/users/jtleek/repos")

names(jsondata)
#give the main and principal variables of the dataframe

names(jsondata$owner)
#owner is again an array of data!

jsondata$owner$login

#multiple level dataframe



##I can convert an existing dataframe to Json

myjson <- toJSON(iris, pretty = T)

cat(myjson)

iris2 <- fromJSON(myjson)

head(iris2)