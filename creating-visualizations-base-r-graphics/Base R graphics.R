# Base code graphics in R
# Bar chart - measurement by category

df <- c(22,27,26,24,23)
barplot(df)
barplot(df, main= "company stock prices",
        xlab = "week",
        ylab= "preice",
        ylim= c(0,30),
        names.arg = c("mon", "tue", "wed", "thu", "fri"),
        col= colours()[12],
        horiz=FALSE)

# Stacked bar chart
set.seed(112)
Z<- matrix(c(15,13,18,55,60,35,35,38,41),# the data elements
    nrow = 3, ncol = 3,# number of rows and columns 
    byrow = TRUE ) # fill the matrix by rows

dimnames(Z) = list(c("Sell", "Buy", "Hold"), c("A", "B", "c")) #Row names and column names
barplot(Z)
barplot(Z, 
        col= colours()[c(35,77,89)],
        border ="white",
        space= 0.04,
        font.axis = 2,
        xlab="group")

#Line Charts - demo

stocks <- read.csv("Closing_Stock_Prices.csv", header = TRUE, sep= ",")

stocks$IBM <- as.numeric(gsub("\\$", "", stocks$IBM)) #to remove $ sign
stocks$INTC <- as.numeric(gsub("\\$", "", stocks$INTC))

#line plot
plot(stocks$Sept_2016, stocks$IBM, type= "o", #this means that data points are a circle o
     xlab= "September 2016",
     ylab = "IBM closing prices")


# Area Chart - demo
plot(stocks$Sept_2016, 
     stocks$INTC, col=rgb (0.2,0.1,0.5),
     type = "o", lwd =3,
     xlab = "September 2016",
     ylab = "INTC closing price")

#This code does not fill in colour under the line (area)
#polygon(
 # c(min(stocks$Sept_2016), stocks$Sept_2016, max(stocks$Sept_2016)),
  #c(min(stocks$IBM), stocks$IBM, min(stocks$IBM)),
  #  col=rgb(0.2,0.1,0.5,0.2), border = FALSE)


#Histograms

stocks$DJ_Industrials_Index <- as.numeric(gsub("\\$", "", stocks$DJ_Industrials_Index))
hist(stocks$DJ_Industrials_Index,
     main = "Index",
     xlab = "Closing Price",#ylab is automatic for histograms
     border = "blue",
     col = "pink",
     prob= FALSE)

# scatter plot - two variables information with regressionline

y <- c(5.2,5.4,3.6,4.2,4.9,5.8,6.2,7.0,7.5)
x<- c(7.8,5.6,6.2,6.3,6.9,7.4,7.8,8.0,8.5)

plot(y~x,
     pch=18, #form of dots
     cex=2, #size of dots
     col="#69b3a2",
     xlab="A", ylab="B",
     main="Correlation A and B")

abline(lm(y~x), col="blue") # regression line (y~x)
r<- lm(y~x)
summary(r)
#Adjusted R-squared:  0.5385 
text(x = 6.0, y = 7, labels = "R2 = 0.54") # no relationship


