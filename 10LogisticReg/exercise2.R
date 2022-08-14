# menarche ~ igf1
model.igf <- glm(menarche ~ igf1,binomial, data=menar)
summary(model.igf)

# log of odds of people with igf1=0
a = -3.239609
# odds ratio, change in odds of menarche when igf1 increases by 1 unit
b = 0.008647

# logit
logit = -3.239609 + 0.008647 * 500
# prob
exp(logit)/(exp(logit)+1)

predict(model.igf, data.frame(igf1=500), type= "response")

# to plot the prob, delete NAs in igf1 first
menarComplete <- menar[complete.cases(menar$igf1),]
probigf <- predict(model.igf, type="response")
plot(probigf ~ igf1, data=menarComplete, pch=16)



# logistic regression of chd on age, cat and their interaction
model.chd2 <- glm(chd ~ age*cat,binomial, data=evans)
summary(model.chd2)
summary(step(model.chd2))
