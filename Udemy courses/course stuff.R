#logical True or False
result <-4<5
4==3 # equal to
4!=5 # not eqal to
# ! not
# | or
# & and
# isTRUE(x)

#use of the Not operator
#result2 <- !TRUE
#result2
#result2 <- !(5>1)

result | result2 # one of these have to be true 
result & result2 # both of these are true


# Looping fundamentals

# The "While" loop
#R starts checking the logical expression inside the brackets (abc)
# If the logical expression is true, then R will execute whatever is in the body of the loop {}
# Then R executes what is inside the body of the loop {xyz}
# Then R return to the logical expression (abc) to see if it is still true

while(abc){
 xyz 
}
# Infinite Loop press esc to stop
while(TRUE){
  print("Hello")
}

# print numbers 1-11 with a loop
counter <- 1
while(counter < 12){
  print(counter)
  counter <- counter +1
}

# The "For" loop
# The brackets () express the iterations "i" (the repetition 
# of a process or utterance) of the loop
# Thus "i" is what is iterated over
# In the example below i will be iterated over 5 times (1:5)
# This is a vectorised operation
for(i in 1:5){
  print("Hello R")
}

# The "if" and "else" statement
# ------------------------------
# generate random number using rnorm()
# The number in the (n), specifies how many numbers
# to generate
# Example to use the "if" statement to identify where the 
# variable will fall (from-3 to 3)
# The "if()" starts with a logical expression "x>1"
# To see if x is larger than 1 # remove a stored variable in R
#rm(answer)
x <- rnorm(1)
if(x>1){
 answer <- "Greater than 1"
} 

# Adding "else" to the mix
# For example if x is less than 1, we can use "else"
# The "else" statement does not need a condition - no brackets
# it is a default/fallback option if the "if" statement is 
# not executed
x <- rnorm(1)
if(x>1){
  answer <- "Greater than 1"
} else {
  answer <- "Less than or equal to 1"
}

# Additional "if/else" statement - nested "if else" statement

x <- rnorm(1)
if(x>1){
  answer <- "Greater than 1"
} else {
    if(x >= -1) {
      answer <- "Between -1 and 1"
    } else {
      answer <- "Less than -1"
    }
}

# Chained Statement: "else if"
# Nested statements are not best practice in programming,
# they can become long and intricate
# chained statements are better gives the same results 
# as above, but cleaner using "else if". 

x <- rnorm(1)
if(x>1){
  answer <- "Greater than 1"
} else if(x >= -1) {
    answer <- "Between -1 and 1"
  } else {
    answer <- "Less than -1"
}

### Lesson 3 ###
# Vectors types are either: number or character
# Vectors can only be of the same type in one vector
# Vectors length 1-infinity

# Create a vector using combine c()
V1<- c(3,45,56,732)
is.numeric(V1) #TRUE
is.integer(V1) #FALSE
is.double(V1) #TRUE

V2<- c(2L, 45L, 15L, 367L)
is.numeric(V2) #TRUE
is.integer(V2) #TRUE
is.double(V2) #FALSE

V3<- c("a", "28L", "B52", "7")
is.numeric(V3) #FALSE
is.integer(V3) #FALSE
is.character(V3) #TRUE

#other ways of creating vectors
seq() #sequence - like ":"
rep() #replicate
x <- seq(1,20) # same as 1:20
y <- seq(1,20,3) # adding a step so every 3rd number in a sequence from 1-20
z <- rep(3,10) #3 replicated 10 times

# Square brackets
w <- c("a","b", "c","d", "e")
w[1] # returns the first vector "a"
w[4] # returns the fourth vector "d"
w[-1] # returns vectors "b" "c" "d" "e"
w[1:3] # returns the first to third vector "a","b","c"
w[c(2,4,5)]# returns vectors "b","d","e"
w[c(-2,-4,-5)]# returns vectors "a","c"
# w[1:2] and w[-3:-5] returns the same vectors "a","b"

# Vectorised operations
x<- rnorm(5)
#printing out all the random numbers in variable x
# using R-specific programming loop
for(i in x){
  print(i)
}
# printing the values of x using []
print(x[1]) # continue until all 5 numbers are printed print(x[2])...print(x[5])

# conventioal programming loop
for(j in 1:5){
  print(x[j])
}

# Examples

N <- 100
a <- rnorm(N)
b <- rnorm(N)

# Vectorised approach
c <- a * b

# De-vectorized approach
d <- rep(NA,N)# creates an empty vector of "NA"s to be filled 
# we have N elements (here 100), thus 1:N
for(i in 1:N){
  d[i] <- a[i] * b[i]
} 
#these two code lines of vectorised and de-vectorised examples are the same
# the vectorised is cleaner 

#------------------------------------------------------------------------------------
### Section 4: MATRICES ###
### load data from the s4-BasketballData.R

## indexation in matrix [row x, column y]= [x,y], where they meet you will get the corresponding #
### getting a numbers from row x [x,]
### getting a numbers from column y [,y]
## matrices can only have vectors of same type
## if column and rows have names, you can also access them by ["x", "y"], but numbers always work

## using matrix() bends a vector into a matrix colmun wise
## using rbind() binds by rows and cbind() binding by columns into a matrix
#Example:
my.data <- 1:20
A <- matrix(my.data, 4,5) # inserting by column
B <- matrix(my.data, 4,5, byrow=TRUE) #inserting by row
B[2,5] #10

## rownames() and colnames() ##

#create a vector
Charlie <- 1:5
#give the vector names
names(Charlie) <- c("a", "b","c", "d", "d")
Charlie[4] # gives d and 4
#clear names from vector
names(Charlie) <- NULL


## Naming Matrix dimensions 1
##
temp.vec <- 
  rep(c("a", "b", "Zz"),3) # replicated 3 times: "a"  "b"  "Zz" "a"  "b"  "Zz" "a"  "b"  "Zz" 
temp.vec1 <- 
  rep(c("a", "b", "Zz"),each=3) #"a"  "a"  "a"  "b"  "b"  "b"  "Zz" "Zz" "Zz"
### Create matrix
Bravo <- (matrix(temp.vec1, 3,3))
rownames(Bravo) <- c("h", "a", "y")
colnames(Bravo) <- c("l", "b", "o")
# exchange a zero value to the matrix in row "a", column "b" 
Bravo["a","b"] <- 0

## Matrix operations - using the matrices in the s4-BasketballData.R script##
## matrices have to be of the same size 
round(MinutesPlayed/Games, 0)
round(FieldGoalAttempts / Games)
round(FieldGoals/Games)
round(FieldGoals/FieldGoalAttempts)

## Visualize with matplot() - plots columns of vectors one by one
#Visualize field goals over time by transposing the matrix of field goals
matplot(t(FieldGoals)) #transposed plot 

matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch= 15:18, col=c(1:4,6) ) #transposed plot looking nice
legend("bottomleft", inset = 0.01, legend=Players,
       col=c(1:4,6),pch= 15:18, horiz=F ) 
# with legend => legend("placement", the inset from the bottom left, vector of legend, colour, symbol, horisontal/vetical)


### Subsetting data in a matrix (i.e. the Games matrix)
Games
Games[1:3,6:10]#returns players (rows) 1-3 and columns 6-10
Games[c(1,10),]#returns payers 1 and 10 (row 1 and 10) and all columns
Games[, c("2008", "2009")] #returns all players (rows), but only for 2 columns: 2008-2009
Games[1,] #Returns a vector not a Matrix 
Games[1,,drop=F] #returns a matrix with the first row (by setting drop = TRUE), otherwise R will think you want a vector
#is.matrix(Games[1,,drop=F]) # True

### Visualizing subsets ###
Data <- MinutesPlayed[1:3,] #showing players 1-3
Data2 <- MinutesPlayed[1,,drop=F] #showing only player 1
matplot(t(Data2), type="b", pch= 15:18, col=c(1:4,6)) #transposed plot looking nice
legend("bottomleft", inset = 0.01, legend=Players,
       col=c(1:4,6),pch= 15:18, horiz=F)

### encapsulating something (code) into a function ##
myplot <- function(){
  Data <- MinutesPlayed[2,,drop=F] #showing only number specified
  matplot(t(Data), type="b", pch= 15:18, col=c(1:4,6)) #transposed plot looking nice
  legend("bottomleft", inset = 0.01, legend=Players[2],
         col=c(1:4,6),pch= 15:18, horiz=F)
}
myplot()

### Flexible function with a parameter - here "rows" ##
myplot <- function(rows){
  Data <- MinutesPlayed[rows,,drop=F] #showing only number specified
  matplot(t(Data), type="b", pch= 15:18, col=c(1:4,6)) #transposed plot looking nice
  legend("bottomleft", inset = 0.01, legend=Players[rows],
         col=c(1:4,6),pch= 15:18, horiz=F)
}
myplot(1:5) #returns rows 1-5 in the plot

##Example with 2 variables

myplot <- function(data,rows){
  Data <- data[rows,,drop=F] #showing only number specified
  matplot(t(Data), type="b", pch= 15:18, col=c(1:4,6)) #transposed plot looking nice
  legend("bottomleft", inset = 0.01, legend=Players[rows],
         col=c(1:4,6),pch= 15:18, horiz=F)
}
myplot(Salary, 1:5) #returns rows 1-5 with the data (specified) in the plot


myplot <- function(data,rows = 1:10){
  Data <- data[rows,,drop=F] #showing only number specified
  matplot(t(Data), type="b", pch= 15:18, col=c(1:4,6)) #transposed plot looking nice
  legend("bottomleft", inset = 0.01, legend=Players[rows],
         col=c(1:4,6),pch= 15:18, horiz=F)
}
myplot(MinutesPlayed/Games,3:4) #returns rows (here #3 and 4) with the data (specified) in the plot
myplot(Games)

### use the function of the plot to find interesting information in the examples below: 
### Plots of salary
myplot(Salary)
myplot(Salary/Games) # two players show anomalies
myplot(Salary/FieldGoals)# two players show anomalies
#Salary are not affected by injury (the anomalies) these are bad graphs, injured players should be remove as they effect the results

## plots of in-game metrics
myplot(MinutesPlayed)
myplot(Points)

##In game metrics normalised
myplot(FieldGoals/Games) # normalised data better to compare
myplot(FieldGoals/FieldGoalAttempts) # Accuracy 
myplot(FieldGoalAttempts/Games) # Actual attempts
myplot(Points/Games) #


#--------------------------------------------------------------------------------------------------
### Course Session 5 - Data frames ###
##read csv file - remember to set your WD
stats <- read.csv(file.choose()) ## open your working directory and you can choose the file
stats <- read.csv("P2-Demographic-Data.csv") # reading the file from the WD you have chosen

### ---- Exploring the data ------
## runif() = r unified distribution (simmilar to rnorm())
nrow(stats) # number of rows
ncol(stats) # number of columns
head(stats) # the top 5 rows of the data
tail(stats) # bottom 5 rows of the data (to add more rows: n=8 (eight rows))
head(stats, n=10) #returns the first 10 rows, can also be used on tail()
str(stats) #returns the structure of the data frame
summary(stats) # returns a summary of your data frame

### --- Using the $-sign ----
### in a data frame the row have numbers not names (as in excel)

stats$Internet.users #returns a vector with all information in the internet users column
stats$Internet.users[2] # Returns the second row value in this column
levels(stats$Income.Group) # returns NULL, different from the tutorial
stats$Income.Group <- as.factor(stats$Income.Group) # to tell R it is a factor an not a character vector
stats$Country.Name <- as.factor(stats$Country.Name)
stats$Country.Code <- as.factor(stats$Country.Code)
stats$Birth.rate*stats$Internet.users
stats$Birth.rate+stats$Internet.users
#to add a column with vectorised calculation
stats$mycal <- stats$Birth.rate*stats$Internet.users
#to remove a column
stats$mycal <- NULL

## ------ Basic operations with a data frame------
stats[1:10,] #subsetting the first 10 rows
stats[c(4,100),] # subsetting the 4th and 100th row
### using []
stats[1,] #returns the 1st row, it does not turn it in to a vector (as in a matrix, no need for drop=F)
stats[,1] # returns a vector (not like above) not a data frame any more, here you need the drop =F to keep it as a DF
stats[,1,drop=F]

#---------Filtering data frames-------
stats$Internet.users <2 #returns a vector of TRUE/FALSE of internet user above 2
filter <- stats$Internet.users <2
stats[filter,] #takes the TRUE/FALSE vector "filter" and displays only the rows with TRUE (less than 2% users)

stats[stats$Birth.rate > 40,] #returns a filtered data frame of countries where birth rates are above 40
stats[stats$Birth.rate > 40 & stats$Internet.users <2,]#returns a filtered data frame of countries where birth rates are above 40 and internet users less than 2
stats[stats$Income.Group == "Low income",] #Filter all low income
stats[stats$Country.Name == "Malta",] # filter out Malta
levels(stats$Income.Group)

#---------- Intro and visualisation with qplot()-------
#Basic plot in GG2 package
library(ggplot2)
#?qplot
qplot(data=stats, x= Income.Group, y= Birth.rate, size=I(3), colour=I("Blue")), x= Internet.users) #columnwise plot with bins
qplot(data=stats, x= Income.Group, y= Birth.rate, size=I(3))#to assign a value of size or colour to a plot add I() around it (as is), otherwise it will become a legend in the plot - 
qplot(data=stats, x= Income.Group, y= Birth.rate, size=I(3), colour=I("Blue"))
qplot(data=stats, x= Income.Group, y= Birth.rate, geom="boxplot") #geom gives the style of plot

qplot(data=stats, x= Internet.users, y=Birth.rate)
qplot(data=stats, x= Internet.users, y=Birth.rate, size=I(4), colour=Income.Group)
