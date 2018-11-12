iBikeData[7,2]
table(BikeData$cyc_freq == "Daily")

frequent <- BikeData[10,]
BikeData [c(1:10),]

frequent <- BikeData [c(1,2,3,4,5,6,7,8,9,10),]
table(frequent$cyc_freq =="Daily")

table(BikeData$student)

student <- BikeData[BikeData$student == 1,]

table(student$cyc_freq)
distance <- student$distance
distance
