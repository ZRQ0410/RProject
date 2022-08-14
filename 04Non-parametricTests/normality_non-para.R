### checking for normality

# 1. visual check
hist(kaf$height, breaks=seq(130,170,1))
hist(kc$height, breaks=seq(50,190,1))

# 2. normality tests: Shapiro test
shapiro.test(kaf$height) # normal
shapiro.test(kc$height) # not normal
hist(intake$post, breaks=seq(3500, 8000,100))
shapiro.test(intake$post) # test shows normal, but not normal


### Wilcoxon one-sample
wilcox.test(intake$post, mu=6500, conf.int=T)


### Wilcoxon two independent samples
# creating file with babies only
kb <- subset(kc, birthyear>1967)
table(kb$sex)
hist(kb$weight[kb$sex == 'man'], breaks = seq(2,10,1))
wilcox.test(kb$weight ~ kb$sex, conf.int=T)


### Wilcoxon paired samples
wilcox.test(intake$pre, intake$post, paired=T, conf.int=T)
