### Homework 1 and 2###

# Test the Law of Large numbers for N random normally distributed numbers with mean=0, SD=1
# Create an R script that will count how many of thes numbers fall between -1 and 1
# and divide by the total quantity of N
# You know that E(X) = 68.2 %
# Check the Mean (Xn) -> E(X) as you rerun your script while increasing N

N <-10000000
counter <- 0
for(i in rnorm(N)){
  if(i>-1 & i < 1){
    counter<- counter+1
  } 
}
answer <- counter/N
answer

### Homework exercise 3 - Financial Statement Analysis###
## Financial statement of Organisation X (monthly revenue and expenses)
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)


#Solution
#Calculate Profit As The Differences Between Revenue And Expenses
profit <- revenue - expenses
profit

#Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
tax <- round(0.30 * profit, 2)
tax 

#Calculate Profit Remaining After Tax Is Deducted
profit.after.tax <- profit - tax
profit.after.tax

#Calculate The Profit Margin As Profit After Tax Over Revenue
#Round To 2 Decimal Points, Then Multiply By 100 To Get %
profit.margin <- round(profit.after.tax/ revenue, 2) * 100
profit.margin

#Calculate The Mean Profit After Tax For The 12 Months
mean_pat <- mean(profit.after.tax)
mean_pat

#Find The Months With Above-Mean Profit After Tax
good.months <- profit.after.tax >  mean_pat
good.months

#Bad Months Are The Opposite Of Good Months !
bad.months <- !good.months #opposite of a positive vector - not(!)good.months
bad.months

#The Best Month Is Where Profit After Tax Was Equal To The Maximum = December
best.month <-  profit.after.tax == max(profit.after.tax)
best.month

#The Worst Month Is Where Profit After Tax Was Equal To The Minimum = March
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

#Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <-round(expenses/ 1000, 0)
profit.1000 <- round(profit / 1000, 0)
profit.after.tax.1000 <- round(tax / 1000, 0)

#Print Results
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profit.margin
good.months
bad.months
best.month
worst.month

#BONUS:
#Preview Of What's Coming In The Next Section
M <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profit.margin,
  good.months,
  bad.months,
  best.month,
  worst.month
)

#Print The Matrix
M


#### Homework session 4 - basketball freethrows (straffekast) ###
### You will need the data from the s4-BasketballData.R script as well

#Seasons
Seasons <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Players
Players <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Free Throws
KobeBryant_FT <- c(696,667,623,483,439,483,381,525,18,196)
JoeJohnson_FT <- c(261,235,316,299,220,195,158,132,159,141)
LeBronJames_FT <- c(601,489,549,594,593,503,387,403,439,375)
CarmeloAnthony_FT <- c(573,459,464,371,508,507,295,425,459,189)
DwightHoward_FT <- c(356,390,529,504,483,546,281,355,349,143)
ChrisBosh_FT <- c(474,463,472,504,470,384,229,241,223,179)
ChrisPaul_FT <- c(394,292,332,455,161,337,260,286,295,289)
KevinDurant_FT <- c(209,209,391,452,756,594,431,679,703,146)
DerrickRose_FT <- c(146,146,146,197,259,476,194,0,27,152)
DwayneWade_FT <- c(629,432,354,590,534,494,235,308,189,284)
#Matrix
#
# <put your code here>
FreeThrows <- rbind(KobeBryant_FT, JoeJohnson_FT,LeBronJames_FT,CarmeloAnthony_FT,DwightHoward_FT,ChrisBosh_FT, ChrisPaul_FT,
                    KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
rm(KobeBryant_FT, JoeJohnson_FT,LeBronJames_FT,CarmeloAnthony_FT,DwightHoward_FT,ChrisBosh_FT, ChrisPaul_FT,
   KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
rownames(FreeThrows) <-Players
colnames(FreeThrows) <- Seasons
#

#Free Throw Attempts
KobeBryant_FTA <- c(819,768,742,564,541,583,451,626,21,241)
JoeJohnson_FTA <- c(330,314,379,362,269,243,186,161,195,176)
LeBronJames_FTA <- c(814,701,771,762,773,663,502,535,585,528)
CarmeloAnthony_FTA <- c(709,568,590,468,612,605,367,512,541,237)
DwightHoward_FTA <- c(598,666,897,849,816,916,572,721,638,271)
ChrisBosh_FTA <- c(581,590,559,617,590,471,279,302,272,232)
ChrisPaul_FTA <- c(465,357,390,524,190,384,302,323,345,321)
KevinDurant_FTA <- c(256,256,448,524,840,675,501,750,805,171)
DerrickRose_FTA <- c(205,205,205,250,338,555,239,0,32,187)
DwayneWade_FTA <- c(803,535,467,771,702,652,297,425,258,370)
#Matrix
#
# <put your code here>
FreeThrowAtt <- rbind(KobeBryant_FTA, JoeJohnson_FTA,LeBronJames_FTA,CarmeloAnthony_FTA,DwightHoward_FTA,ChrisBosh_FTA, ChrisPaul_FTA,
                    KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
rm(KobeBryant_FTA, JoeJohnson_FTA,LeBronJames_FTA,CarmeloAnthony_FTA,DwightHoward_FTA,ChrisBosh_FTA, ChrisPaul_FTA,
   KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
rownames(FreeThrowAtt) <-Players
colnames(FreeThrowAtt) <- Seasons

myplot <- function(data,rows){
  Data <- data[rows,,drop=F] #showing only number specified
  matplot(t(Data), type="b", pch= 15:18, col=c(1:4,6)) #transposed plot looking nice
  legend("bottomleft", inset = 0.01, legend=Players[rows],
         col=c(1:4,6),pch= 15:18, horiz=F)
}
#plot the new data 
myplot(FreeThrows)
myplot(FreeThrowAtt)
#Part 1 - Free Throw Attempts Per Game 
myplot(FreeThrowAtt/Games)

#Part 2 - Free Throw Accuracy
myplot(FreeThrows/FreeThrowAtt)

##part 3 of the challenge
OnlyFieldGoals <- round((Points-FreeThrows)/FieldGoals,2)
myplot(OnlyFieldGoals)
myplot((Points-FreeThrows)/FieldGoals) #exactly the same as above 
