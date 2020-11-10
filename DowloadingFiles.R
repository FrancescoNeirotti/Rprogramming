#how to dowload files

# 1st
# it is importat to know where you are and to assign and move from different directory

getwd()
setwd()


file.exist("dir name") #check if directory exist
dir.create("dir name") #create a directory

# dowload

download.file() #url, destfile, method are the main parameters to be assign

#example - open baltimore - FixedCameraSpeed

fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD&bom=true&format=true"

#dir.create("data")

download.file(fileUrl, destfile = ".\\data\\cameras.csv", method = "curl") #curl for an https better.

list.files(".\\data")

dateDown <- date() #super important to underline when you dowloaded the data.
dateDown







