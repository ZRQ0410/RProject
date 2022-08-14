# ANOVA, Bartlett's test
table(SBR2$year)
tapply(SBR2$head, SBR2$year, mean, na.rm=T)
tapply(SBR2$head, SBR2$year, var, na.rm=T)
tapply(SBR2$head, SBR2$year, hist, breaks = seq(10, 75, 1))
tapply(SBR2$head, SBR2$year, shapiro.test)
# check variances across groups
bartlett.test(SBR2$head ~ SBR2$year) # p>0.05, variances are similar, use anova(lm)

# ANOVA (anova(lm))
class(SBR2$year)
class(SBR2$delivery)
anova(lm(SBR2$head ~ SBR2$year))
# pairwise t-test
pairwise.t.test(SBR2$head, SBR2$year)


# convert year to numeric/factor
# SBR2$year <- as.numeric(SBR2$year)
# SBR2$year <- as.factor(SBR2$year)


# when variances are different across groups
# ANOVA with oneway()
tapply(SBR3$head, SBR3$delivery, mean, na.rm=T)
tapply(SBR3$head, SBR3$delivery, var, na.rm=T)
hist(SBR3$head, SBR3$delivery, breaks = seq(5, 80, 1))
tapply(SBR3$head, SBR3$delivery, hist, breaks = seq(5, 80, 1))
tapply(SBR3$head, SBR3$delivery, hist, shapiro.test)
bartlett.test(SBR3$head ~ SBR3$delivery) # variances are different
oneway.test(SBR3$head ~ SBR3$delivery)
# pairwise t-test
pairwise.t.test(SBR3$head, SBR3$delivery, pool.sd=F)

# Kruskal-Wallis test
tapply(brain$PrebyT, brain$group, mean, na.rm=T)
# small sample size -> Bartlett test return a high p-value
bartlett.test(brain$PrebyT ~ brain$group)
summary(brain$group)
kruskal.test(brain$PrebyT ~ brain$group)
pairwise.wilcox.test(brain$PrebyT, brain$group)

# Two-way ANOVA
anova(lm(SBR2$head ~ SBR2$year + SBR2$delivery))
