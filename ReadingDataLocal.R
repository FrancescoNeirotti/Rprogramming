#Reading Data


read.table() #flexible but require different paramenters to correctly read the file
read.csv()

cameraData <- read.table(".\\data\\cameras.csv", sep = ",", header = T)
head(cameraData)

cameraData1 <- read.csv(".\\data\\cameras.csv")
head(cameraData1)

#quote = ""
#is very useful to handle different data()


# XML - Extensible markup language.
install.packages("XML")
## Frequently used for website so useful during scraping
    #Markup - Lables that give the text structure
    #content - the actuale content
library(XML)
#Start Tag <section>
 # end tags </section>
  #Empty tags <line-break />

#<section> Blbablabla </section>

fileurl <- "http://www.w3schools.com/xml/simple.xml"
doc <- xmlTreeParse(fileurl)

library(xml2)
library(tidyverse)

doc <- read_xml("http://www.w3schools.com/xml/simple.xml")

RootNode <- xml_root(doc)

RootNode[[1]]

xmlName(RootNode)

names(rootNode)

names(doc)






