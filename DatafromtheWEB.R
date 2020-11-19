#Reading from the web

#webscraping: fromHTML. You can programaticaly read.
#beware of scraping data!

#Scraping from scholar page

con = url("https://scholar.google.com/citations?hl=en&user=QfYycpgAAAAJ")
htmlcode = readLines(con)
close(con)
htmlcode

#in this ay is a mess
#try with XML

library(XML)

url <- "https://scholar.google.com/citations?hl=en&user=QfYycpgAAAAJ"
html <- htmlTreeParse(url, useInternalNodes = T)

xpathSApply(htmlcode, "/title", xmlValue)

aa <- xpathSApply(html, "//td[@id='cal-citeby']", xmlValue)


#????????????????????????

