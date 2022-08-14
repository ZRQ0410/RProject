class(SBR2$size)
tapply(SBR2$size, SBR2$delivery, mean, na.rm=T)
tapply(SBR2$size, SBR2$delivery, hist, breaks=seq(0,6500,100)) # look normal

# shapiro test with samples
# not normal: sample sizes are too large, too sensitive
# if it's bell-shaped, then treat it as normal distribution
tapply(SBR2$size, SBR2$delivery, function(x) shapiro.test(sample(x,4999)))

tapply(SBR2$size, SBR2$delivery, var, na.rm=T)

bartlett.test(SBR2$size ~ SBR2$delivery) # p-value < 2.2e-16, significant difference
oneway.test(SBR2$size ~ SBR2$delivery) # F = 1049.9, p-value < 2.2e-16, significant difference

# pairwise t-test not assuming equal var
pairwise.t.test(SBR2$size, SBR2$delivery, pool.sd=F) # every group is different
