# Pearson correlation
cor.test(SBR$size, SBR$head)
# cor.test(SBR$head, SBR$size) same result

# Spearman correlation: small size / not normal
cor.test(Brains2$PreWhite, Brains2$PreGray, method="spearman")

# dataset: HDR2011, Spearman test (not normal)
hist(hdr$lifespan, breaks=seq(40,90,2))
hist(hdr$schooling)
hist(hdr$income)
shapiro.test(hdr$lifespan)
shapiro.test(hdr$schooling)
shapiro.test(hdr$income)

cor.test(hdr$lifespan, hdr$schooling, method="spearman") # rho: 0.7194679
cor.test(hdr$lifespan, hdr$income, method="spearman") # rho: 0.8362123
cor.test(hdr$income, hdr$schooling, method="spearman") # rho: 0.7628043


# regression statistics
brainreg <- lm(Brains$BrWhite ~ Brains$BrGray) # lm: linear model
brainreg
summary(brainreg)

# confidence interval of parameters
confint(brainreg)

# visualising
plot(Brains$BrWhite ~ Brains$BrGray)

# adding regression line
abline(brainreg)
