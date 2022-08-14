# mean weight of boys and girls (separately)
tapply(kb$weight, kb$sex, mean, na.rm=T)
# Shapiro test for boys and girls
tapply(kb$weight, kb$sex, shapiro.test)


# check if react is normal
react
hist(react)
hist(react,breaks=seq(-9,8,1))
shapiro.test(react) # not normal


# import HDR2011 file
# 1. check normality: histogram + Shapiro test
hist(hdr$HDI,breaks=seq(0.2,1,0.01))
shapiro.test(hdr$HDI) # not normal
mean(hdr$HDI,na.rm=T)
# 2. Wilcoxon one-sample
wilcox.test(hdr$HDI, mu=0.7, conf.int=T)


# Wilcoxon two-sample
zelazo # small size
wilcox.test(zelazo$active, zelazo$none, conf.int=T)
wilcox.test(zelazo$active, zelazo$ctr.8w, conf.int=T)

energy
table(energy$stature) # small size
wilcox.test(energy$expend ~ energy$stature, conf.int=T)


# Wilcoxon paired
heart.rate
hr0 <- subset(heart.rate, heart.rate$time == 0)
hr120 <- subset(heart.rate, heart.rate$time == 120)
wilcox.test(hr0$hr, hr120$hr, paired=T, conf.int=T)
# wilcox.test(heart.rate$hr[heart.rate$time==0], heart.rate$hr[heart.rate$time==120], paired=T, conf.int=T)
