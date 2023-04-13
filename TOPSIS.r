library("xlsx")
library("topsis")
mydata <- read.xlsx("Desktop/MY work/objective 1_SSM/TOPSIS/inputdata.xlsx", sheetName="Sheet1") 
View (mydata)
d <- data.matrix(mydata)
i <- c("-","+","+","+","-")
#RT,ava, trh, rel, lat
w <- c(0.36, 0.05, 0.13, 0.09, 0.37)
result <- topsis(d,w,i)
end_time <- Sys.time()
runtime <- end_time - start_time
write.xlsx(result, file = "Desktop/MY work/objective 1_SSM/TOPSIS/topsis_result.xlsx", sheetName = "topsis_result", append = FALSE)
View (result)
