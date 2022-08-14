# menarche analysis
# model menarche
model.menar <- glm(menarche ~ age, binomial, data=menar)
summary(model.menar)
# logits
predict(model.menar)
# probabilities
probs <- predict(model.menar, type="response")
probs
# probability plot
plot(probs ~ age, data=menar, ylab="menarche", pch=16)
# predict probability at a given point
predict(model.menar, data.frame(age=20), type= "response")



# factors with >2 levels
# levels, not continuous, so make sure they are factors (month)
model.infant <- glm(healthy ~ month,binomial, data=infant)
summary(model.infant)
coef(model.infant)
exp(coef(model.infant))
levels(infant$month)
# set April as baseline
infant$month <- relevel(infant$month, ref = 4)
model.infant <- glm(healthy ~ month,binomial, data=infant)
summary(model.infant)



# interactions
model.chd <- glm(chd ~ age*cat*chl, binomial, data=evans)
summary(model.chd)

# model optimisation
model.menar2 <- glm(menarche ~ age*igf1, binomial, data=menar)
summary(model.menar2)
summary(step(model.menar2))
