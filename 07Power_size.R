# one sample t-test
power.t.test(n=20, sd=7, delta=5, type="one.sample")
power.t.test(power=0.9, sd=7, delta=5, type="one.sample")
# two sample
power.t.test(power=0.8, delta=7, sd=5)
# paired
power.t.test(delta=2, sd=5, power=0.80, type="paired")
# proportion
power.prop.test(power=0.9, p1=0.1, p2=0.25)
# anova
power.anova.test(groups=4, between.var=4, within.var=40, power=0.9)


# Exercise
# two sample t-test
power.t.test(power=0.9, sd=400, delta=165) # 125 * 2
power.t.test(power=0.9, sd=400, delta=330) # 32 * 2
# proportion test
prop.test(c(120,114), c(254,216)) # p1=0.4724409, p2=0.5277778
power.prop.test(power=0.8, p1=0.4724409, p2=0.5277778) # 1281 * 2
