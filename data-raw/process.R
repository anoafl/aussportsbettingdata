# Step one get some data do whatever processing you need
library(readxl)
filetodownload <- "http://www.aussportsbetting.com/historical_data/afl.xlsx"
download.file(filetodownload,"data-raw/aflodds.xlsx",mode="wb")


bettingdata <-read_excel("data-raw/aflodds.xlsx", sheet = 1,skip = 1)

###  save the data in the data folder
devtools::use_data(bettingdata, overwrite = T)

