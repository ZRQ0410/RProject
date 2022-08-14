kcm <- subset(kc, age > 18 & sex == "man")

plot(kcm$weight ~ kcm$height)


kcmreg <- lm(kcm$weight ~ kcm$height)
summary(kcmreg)
# t-value = 11.03, p < 2e-16
# how much of variance? Multiple R-squared: 0.429

# correlation
sqrt(0.429)
hist(kcm$weight)
hist(kcm$height)
shapiro.test(kcm$weight)
shapiro.test(kcm$height)
cor.test(kcm$weight, kcm$height)

confint(kcmreg)
abline(kcmreg)


165*0.61377-49.81940
