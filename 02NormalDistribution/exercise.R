# creating a file: adults female:
kungadultfemales <- subset(KungCensus, age > 18 & sex == 'woman')

hist(KungCensus$weight[KungCensus$age > 18 & KungCensus$sex == 'woman'])
# hist(kungadultfemales$weight)

summary(kungadultfemales$weight)

m <- mean(kungadultfemales$weight,na.rm = T) # mean
s <- sd(kungadultfemales$weight,na.rm = T) # standard deviation

z1 <- (40-m)/s
z2 <- (60-m)/s

pnorm(z1,0,1)
1-pnorm(z2,0,1)

pnorm(-3,0,1)
1-pnorm(3,0,1)

1-pnorm(-3,0,1)*2
