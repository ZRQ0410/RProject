library(MASS)
bacteria

d <- subset(bacteria, ap == "a")
p <- subset(bacteria, ap == "p")

summary(bacteria)
124+96

prop.test(124, 220, 0.5)

table(bacteria$y, bacteria$trt)
prop.test(c(84,44,49),c(96,62,62))





anorexia
table(anorexia$Treat)
cont = subset(anorexia, Treat=="Cont")
cbt = subset(anorexia, Treat=="CBT")
ft = subset(anorexia, Treat=="FT")

wilcox.test(cont$Postwt, cont$Prewt, paired=T, conf.int=T)
wilcox.test(cbt$Postwt, cbt$Prewt, paired=T, conf.int=T)
wilcox.test(ft$Postwt, ft$Prewt, paired=T, conf.int=T)





birthwt = birthwt
birthreg <- lm(birthwt$bwt ~ birthwt$lwt)
summary(birthreg)

plot(birthwt$bwt ~ birthwt$lwt)
abline(birthreg)



model.low <- glm(low ~ age*lwt*smoke, binomial, data=birthwt)
summary(model.low)

summary(step(model.low))







coop = coop

table(coop$Lab)
tapply(coop$Conc, coop$Lab, hist)
tapply(coop$Conc, coop$Lab, shapiro.test)

kruskal.test(coop$Conc ~ coop$Lab)
pairwise.wilcox.test(coop$Conc, coop$Lab)





