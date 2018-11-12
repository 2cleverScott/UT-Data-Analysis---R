plot(BullRiders$YearsPro, BullRiders$BuckOuts, xlab='Years Pro', ylab='Buckouts', main='Plot of BO and Years')

abline(lm(BullRiders$BuckOuts~BullRiders$YearsPro))


plot(BullRiders$Events, BullRiders$BuckOuts, xlab='Events', ylab='Buckouts', main='Plot of BO and Years')


hist(BullRiders$RidePer)
fivenum(BullRiders$RidePer)
mean(BullRiders$RidePer)
sd(BullRiders$RidePer)

hist(BullRiders$Top10)
fivenum(BullRiders$Top10)
mean(BullRiders$Top10)
sd(BullRiders$Top10)


plot(BullRiders$RidePer,BullRiders$Top10)

abline(lm(BullRiders$Top10~BullRiders$RidePer))

cor(BullRiders$Rides,BullRiders$Top10)

which(BullRiders$Top10==5 & BullRiders$RidePer==.53)

# Correlation Matrix
vars <- c("Top10", "RidePer")
cor (BullRiders[,vars])

vars <- c("Top10", "RidePer", "BuckOuts")

identify specific case
which(BullRiders$Earnings == max(BullRiders$Earnings))

plot(BullRiders$Earnings, BullRiders$RidePer)

nooutlier <-BullRiders[-1,]
plot(nooutlier$Earnings, nooutlier$RidePer)

cor(nooutlier$Earnings, nooutlier$RidePer)
cor(nooutlier$Earnings, nooutlier$CupPoints)

BullRiders$RidesPerEvent <- BullRiders$Rides/BullRiders$Events
hist(BullRiders$RidesPerEvent)
fivenum(BullRiders$RidesPerEvent)
plot(BullRiders$Place, BullRiders$RidesPerEvent)

abline(lm(BullRiders$Place~BullRiders$RidesPerEvent))
cor(BullRiders$Place, BullRiders$RidesPerEvent)
