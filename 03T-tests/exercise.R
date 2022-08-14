kfm
t.test(kfm$weight ~ kfm$sex)
# 0.1248 > 0.05, no significant difference

t.test(kfm$dl.milk ~ kfm$sex)
# 0.03468 < 0.05, different

# paired t test
t.test(hl$longevity.women, hl$longevity.men, paired=T)
# p < 0.05, different
