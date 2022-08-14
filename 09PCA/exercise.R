hdr1 <- subset(hdr, select=c(lifespan,schoolingyears,GNI))
hdr2 <- hdr1[complete.cases(hdr1),]

pca2 <- prcomp(hdr2, scale.=T, retx=T)
pca2
# Y1 = -0.6037158(lifespan) - 0.5881280(schoolingyears) - 0.5381753(GNI)

# Y of first country
-0.6037158 * 1.192653 - 0.5881280 * 1.685547 - 0.5381753 * 2.249236


pca2$x

mean(hdr2$lifespan)
mean(hdr2$schoolingyears)
mean(hdr2$GNI)
sd(hdr2$lifespan)
sd(hdr2$schoolingyears)
sd(hdr2$GNI)
(81.1-69.63422)/9.613678 # 1.192653
(12.6-7.611765)/2.959416 # 1.685547
(47557-12782.21)/15460.71 # 2.249236


pca2$sdev^2

screeplot(pca2, main="LCs", type="line", pch=16)

summary(pca2)
