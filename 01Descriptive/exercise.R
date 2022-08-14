# histogram of age distribution
hist(KungCensus$age, xlab="age", ylab="number of people", 
     main="Age Distribution", breaks=seq(0,85,5), freq=T, col="skyblue")
# freq=T: count
# freq=F: percentage


# from 0 to 65, increment by 1
seq(0,65,1)


# plot of height by age, x:age, y:height
plot(height ~ age, data=KungCensus, col="grey50", main="Plot of Height by Age", pch=5)


# y:weight, x:height
plot(KungCensus$weight ~ KungCensus$height)
# x:weight, y:height
plot(KungCensus$weight, KungCensus$height)
