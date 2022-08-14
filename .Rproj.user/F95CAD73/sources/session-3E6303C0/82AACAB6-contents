# hypertension analysis
# files hypertension and hypnonhyp

# create data frame hypertension
noyes = c("no", "yes")
smoking <- gl(2,1,4, noyes)
obesity <- gl(2,2,4, noyes)
total <- c(247, 102, 59, 25)
hyper <- c(40,15,16,8)
hypertension <- data.frame(smoking, obesity,total,hyper)

attach(hypertension)
hypnonhyp <- cbind(hyper, nonhyper=total-hyper)

# model 1
model.hyper <- glm(hypnonhyp ~ obesity, family = binomial)
summary(model.hyper)

# model 2
model.hyper2 <- glm(hypnonhyp ~ smoking, binomial)
summary(model.hyper2)

a = -1.49611 # significant, p < 2e-16
b = -0.01279 # not significant, p = 0.963

# if b is significant:
# baseline odds:
exp(a)
# odds ratio:
exp(b)
# odds of exposure(smokers):
exp(a+b)
# prob of hypertension in non-smokers:
exp(a)/(exp(a)+1)
# prob of hypertension in smokers:
exp(a+b)/(exp(a+b)+1)





### another way:
# model 2
model.hyper2 <- glm(hypnonhyp ~ smoking, family=binomial, data=hypertension)
summary(model.hyper2)

# 95% CI
confint(model.hyper2)
confint.default(model.hyper2)

# odds ratios, probabilities
coef(model.hyper2)
exp(cbind('Odds ratio'=coef(model.hyper2), confint(model.hyper2)))

coef(model.hyper2)
exp(coef(model.hyper2))
# e^a x e^b
0.224*0.987294



