View(BullRiders)
BullRiders[10,]
BullRiders[c(1:10),]

min(BullRiders$BuckOuts)

hist(BullRiders$Earnings)
fivenum((BullRiders$Earnings))
median(BullRiders$Earnings)
mean(BullRiders$Earnings)
plot(BullRiders$Earnings, BullRiders$RidePer)
cor(BullRiders$Earnings, BullRiders$RidePer)

cor(BullRiders$Earnings, BullRiders$CupPoints)
plot(BullRiders$Earnings, BullRiders$CupPoints)
