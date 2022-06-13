setwd('C:/Users/emile/Desktop/Import')

stocks <-read.table("Closing_Stock_Prices.csv",header=TRUE, sep=",")

stocks$Index = as.numeric(gsub("\\$", "", stocks$Index))

hist(stocks$Index, 
     main="Distribution of Index", 
     xlab="Closing Prices", 
     border="blue", 
     col="light blue", 
     prob=FALSE)

