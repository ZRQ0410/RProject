morley
a<-subset(morley,Expt==1)
b<-subset(morley,Expt==2)
c<-subset(morley,Expt==3)
d<-subset(morley,Expt==4)
e<-subset(morley,Expt==5)
mean(a$Speed)
mean(b$Speed)
mean(c$Speed)
mean(d$Speed)
mean(e$Speed)
tapply(morley$Speed, morley$Expt, mean)

hist(a$Speed)
hist(b$Speed)
hist(c$Speed)
hist(d$Speed)
hist(e$Speed)

library(lattice)
histogram(~Speed | Expt, data = morley) # use package lattice

morley$Expt <- as.factor(morley$Expt)
kruskal.test(morley$Speed ~ morley$Expt)
pairwise.wilcox.test(morley$Speed, morley$Expt)
# 1-4 1-5


mtcars
plot(mtcars$mpg ~ mtcars$hp)

carreg<- lm(mtcars$mpg ~ mtcars$hp)
summary(carreg)

abline(carreg)

plot(mtcars$mpg ~ mtcars$wt)
carreg2 <- lm(mtcars$mpg ~ mtcars$wt)
summary(carreg2)
abline(carreg2)


