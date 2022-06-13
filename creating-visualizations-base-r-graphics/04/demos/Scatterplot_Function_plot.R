y <- c(5.2,5.4,3.6,4.2,4.9,5.8,6.2,7.0,7.5)
x<- c(7.8,5.6,6.2,6.3,6.9,7.4,7.8,8.0,8.5)

plot(y~x,
     pch=18, 
     cex=2, 
     col="#69b3a2",
     xlab="A", ylab="B",
     main="Correlation A and B")

abline(lm(y~x), col="blue") # regression line (y~x)
r<- lm(y~x)
summary(r)
text(x = 6.0, y = 7, labels = "R2 = 0.53")
