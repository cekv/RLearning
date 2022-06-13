setwd('C:/Users/emile/Desktop/Import')

stocks <-read.table("Closing_Stock_Prices.csv",header=TRUE, sep=",")

stocks$A = as.numeric(gsub("\\$", "", stocks$A))
stocks$B = as.numeric(gsub("\\$", "", stocks$B))

plot(stocks$Sept_2016,stocks$A,  type = "o",
     xlab="Sept 2016",
     ylab="A Closing Prices")


