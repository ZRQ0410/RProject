beaver2
mean(beaver2$temp[beaver2$activ==0])
mean(beaver2$temp[beaver2$activ==1])



table(beaver2$activ)
ac0 <- subset(beaver2, beaver2$activ==0)
ac1 <- subset(beaver2, beaver2$activ==1)
hist(ac0$temp, breaks=seq(36.4,37.8,0.2))
hist(ac1$temp, breaks=seq(37.4,38.4,0.1))

mean(ac0$temp)
mean(ac1$temp)

shapiro.test(ac0$temp)
shapiro.test(ac1$temp)

t.test(ac0$temp, ac1$temp)
# wilcox.test(ac0$temp, ac1$temp)


CO2
table(CO2$Type)
ut1 <- subset(CO2, CO2$Type=="Quebec")
ut2 <- subset(CO2, CO2$Type=="Mississippi")
hist(ut1$uptake, breaks=seq(0,50,1))
hist(ut2$uptake, breaks=seq(5,40,1))

shapiro.test(ut1$uptake)
shapiro.test(ut2$uptake)

wilcox.test(ut1$uptake, ut2$uptake, conf.int=T)
