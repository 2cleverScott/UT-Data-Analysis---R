table(WorldRecords$Event)
WR <-WorldRecords[]
#Invoke the SDSFoundataions package
library(SDSFoundations)

#Subset the data

menshot <- WR[WR$Event=='Mens Shotput',]
womenshot <- WR[WR$Event=='Womens Shotput',] 

#Create scatterplots

plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

#Run linear models

linFit(menshot$Year, menshot$Record)
linFit(womenshot$Year,womenshot$Record)

#Subset the data

menmile <- WR[WR$Event=='Mens Mile',]
womenmile <- WR[WR$Event=='Womens Mile',] 

plot(menmile$Year, menmile$Record)
plot(womenmile$Year, womenmile$Record)

linFit(menmile$Year, menmile$Record)
linFit(womenmile$Year, womenmile$Record)

#lab
menvault <- WR[WR$Event=='Mens Polevault',]

menvault70 <- menvault[menvault$Year >="1970", ] 
max(menvault$Record)
View(menvault)

plot(menvault$Year, menvault$Record)

linFit(menvault$Year, menvault$Record)

plot(menvault70$Year, menvault70$Record)
linFit(menvault70$Year, menvault70$Record)
