B <- c(22, 27, 26, 24, 23)

barplot(B)
# barchart with added parameters
barplot(B,
        main = "Company B Stock Prices",
        xlab = "Week End 9/26",
        ylab = "Price",
        ylim =c(0,30),
        names.arg = c("Mon", "Tue", "Wed", "Thu", "Fri"),
        col = colors()[12],
        horiz = FALSE)

# Create data
set.seed(112)
Z = matrix( 
  c(15, 13,18,55,60,35, 35,38,41), # the data elements 
  nrow=3,              # number of rows 
  ncol=3,              # number of columns 
  byrow = TRUE)        # fill matrix by rows 
dimnames(Z) = list( 
    c("Sell", "Hold","Buy"),         # row names 
    c("A", "B", "C")) # column names 


# Get the stacked barplot
barplot(Z)
barplot(Z, 
        col=colors()[c(35,77, 89)] , 
        border="white", 
        space=0.04, 
        font.axis=2, 
        xlab="group")

