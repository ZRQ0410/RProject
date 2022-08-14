# create file with only females older than 17 years of age
kc <- KungCensus
kaf <- subset(kc, sex=="woman" & age > 18)


# One-sample t-test 
# 1. height is significantly different from 155cm?
t.test(kaf$height, mu=155)
t.test(kaf$height, mu=155, conf.level=0.99)
# 2. weight is significantly different from 40kg?
t.test(kaf$weight, mu=40)
t.test(kaf$weight, mu=40, conf.level=0.99)


# Two-sample t-test
t.test(kc$weight ~ kc$sex)
t.test(kc$weight ~ kc$sex, conf.level=0.99)


# Paired t-test
# first, install and run package ISwR
library(ISwR)
intake # small sample, better use Wilcoxon test
t.test(intake$post, intake$pre, paired=T)
t.test(intake$pre, intake$post, paired=T)
t.test(intake$post, intake$pre, paired=T, conf.level=0.99)
# if we run two-sample t test -- p will be much higher
# therefore do not use two-sample
t.test(intake$post,intake$pre)
t.test(intake$post,intake$pre, conf.level=0.99)

