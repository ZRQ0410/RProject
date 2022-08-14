# descriptive statistics

# mean
mean(KungCensus$weight, na.rm=T)
range(KungCensus$weight, na.rm=T)

# mode
table(KungCensus$weight)
table(as.integer(KungCensus$weight))
# turn the values into integers, and sort the count
sort(table(as.integer(KungCensus$weight)))

# median
median(KungCensus$weight, na.rm=T)

# summaries
summary(KungCensus$weight)
summary(KungCensus$sex)
table(KungCensus$sex)
summary(KungCensus)

# measures of dispersalhist()
var(KungCensus$weight, na.rm=T)
sd(KungCensus$weight, na.rm=T)
var(weight, na.rm=T)

# histogram
hist(KungCensus$weight)
hist(KungCensus$weight, breaks=seq(0,65,1), freq=T,
     main="Weight of the !Kung", col="tomato",
     xlab="weight (kg)", ylab="number of people")

# plot
# plot(weight ~ age, data=KungCensus)
plot(KungCensus$weight ~ KungCensus$age)
plot(KungCensus$weight ~ KungCensus$age, cex.axis=1.2, 
     col="red", xlab="age (years)", ylab="weight", pch=24)
