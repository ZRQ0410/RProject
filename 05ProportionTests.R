#chi-square/proportion tests

#one-sample
# prop.test(120, 254, 0.5) p-value is the same
prop.test(134, 254, 0.5)
prop.test(39, 87, 0.5)

#to find out the numbers of boys and girls in example 1,
#just solve the two-equation system:

#b + g = 239
#b/g = 0.897

#hence b = 0.897*g

#and
#0.897g + g = 239
#1.897g = 239
#239/1.897 
#g = 126
#b = 113
#113/126


#two-samples
prop.test(c(120,114), c(254,216))
prop.test(c(39,52), c(87,85))

#alternatives
binom.test(120,254)
fisher.test(matrix(c(39, 52, 48, 33), 2))
chisq.test(matrix(c(39, 52, 48, 33), 2))

prop.test(c(120,114,113,119),c(254,216,239,224)) # positives, total
chisq.test(matrix(c(120,114,113,119,134,102,126,105), 4)) # positives(4), negatives(4)

