wbd [wbd$mobile.users== 0,]
aussie <- wbd[wbd$Country == "Australia",]
View(aussie)

#Pre-Lab6
library(SDSFoundations)

# Subset data for just the United States and name the new data frame "us"
us <- wbd[wbd$Country.Code == "USA",]

# Select the years from 1990 and name the new data frame "us_select"
us_select <- us[us$year >= 1990, ]

# Make the number of users more interpretable (into millions)
us_select$internet.mil <- us_select$internet.users / 1000000

# Create a new variable that is "years since 1990"
us_select$time <- us_select$year - 1990

# Select the first 10 years (from 1990 to 1999) and name the new data frame "us_select_10"
us_select_10 <- us_select[us_select$time < 10,]

# Use a function to fit an exponential and logistic model for 1990-1999
expFit(us_select_10$time, us_select_10$internet.mil)
logisticFit(us_select_10$time, us_select_10$internet.mil)

# Based on the prior model parameters, predict the number of internet users in 2006
e <- expFitPred(us_select_10$time, us_select_10$internet.mil, 16)
l <- logisticFitPred(us_select_10$time, us_select_10$internet.mil, 16)

# Show how many internet users the US actually had in 2006
us_select[us_select$time == 16, c("Country", "year", "internet.mil")]

# Calculate the residuals for each model
us_select$internet.mil[us_select$time == 16] - e
us_select$internet.mil[us_select$time == 16] - l

# Look at the model fits for all available data (1990 to 2012)
expFit(us_select$time, us_select$internet.mil)
logisticFit(us_select$time, us_select$internet.mil)

# Which model fits the best?
tripleFit(us_select$time, us_select$internet.mil)
tripleFit(us_select_10$time, us_select_10$internet.mil)

# How many internet users would the US have had in 2012 if you had used the original exponential model?
expFitPred(us_select_10$time, us_select_10$internet.mil, 22)

expFitPred(us_select_10$time, us_select_10$internet.mil, 16)
logisticFitPred(us_select_10$time, us_select_10$internet.mil, 16)
us_select_10$internet.mil[us_select_10$time == 16] - e

#Denmark - Lab6

wbd$proportion <- wbd$internet.users / wbd$population

wbd$proportion

wbd_1990 <- wbd[wbd$year >= 1990, ]

wbd_1990$years90 <- wbd_1990$year -1990

dmark <-wbd_1990[wbd_1990$Country == "Denmark",]
brus <- wbd_1990[wbd_1990$Country == "Belarus",]

expFit(dmark$years90, dmark$proportion)
logisticFit(  dmark$years90, dmark$proportion)

expFit(brus$years90, brus$proportion)
logisticFit(brus$years90, brus$proportion)

logisticFitPred( dmark$years90, dmark$proportion, 15)
logisticFitPred(brus$years90,brus$proportion,  29)

expFitPred(dmark$proportion, dmark$years90,)

l <- logisticFitPred(dmark$years90, dmark$proportion, 16)
dmark$proportion[dmark$years90 == 7] - e

#Problem Set
Brazil <- wbd[wbd$Country == "Brazil",]

Brazil[Brazil$year=="2000", 13]/ 1000000

#PS no.2
Brazil[Brazil$mobile.users >100000000, 3]

#after 1995
b95 <- Brazil[Brazil$year >= 1995, ]

b95$mobilemil <- b95$mobile.users/ 1000000

expFit(b95$year, b95$mobilemil)
logisticFit(b95$year, b95$mobilemil)

tripleFit(b95$year, b95$mobilemil)

logisticFitPred( b95$year, b95$mobilemil, 2025)
