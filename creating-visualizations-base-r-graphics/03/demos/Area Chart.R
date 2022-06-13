
setwd('C:/Users/emile/Desktop/Import')

stocks <-read.table("Closing_Stock_Prices.csv",header=TRUE, sep=",")

stocks$A = as.numeric(gsub("\\$", "", stocks$A))
stocks$B = as.numeric(gsub("\\$", "", stocks$B))

plot(stocks$Sept_2016 , 
     stocks$B, col=rgb(0.2,0.1,0.5) , 
     type="o" ,lwd=3 ,  
     xlab="Sept 2016" , 
     ylab="B Closing Price" 
     )

polygon( 
  c(min(stocks$Sept_2016), stocks$Sept_2016 , max(stocks$Sept_2016)) , 
  c( min(stocks$B) , stocks$B , min(stocks$B)) , 
  col=rgb(0.2,0.1,0.5,0.2) ,border=F
)
