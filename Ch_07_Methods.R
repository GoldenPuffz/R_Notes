### CHAPTER 7 METHODS ##########################################################

### 7.1 ########################################################################

### calculate areas under the STANDARD normal curve: pnorm(z, mean, SD, lower.tail = )

# less than = lower tail true
# greater than = lower tail false 

#8. P(Z < 1) = 
pnorm(1, 0, 1, lower.tail = TRUE) # 0.8413

#9. P(Z > -2) = 
pnorm(-2, 0, 1, lower.tail = FALSE) # 0.9772

#10. P(Z < 0.458) = 
pnorm(0.458, 0, 1, lower.tail = TRUE) # 0.6765

#11. P(-1 < Z < 1) = 
pnorm(1, 0, 1, lower.tail = TRUE) - pnorm(-1, 0, 1, lower.tail = TRUE) # 0.6827

#12. P(1.7 < Z < 2.06) = 
pnorm(2.06, 0, 1, lower.tail = TRUE) - pnorm(1.7, 0, 1, lower.tail = TRUE) # 0.0249


### find the cut-off values for a corresponding area: qnorm(area, mean, SD, lower.tail = )

#13. The area to the left of this Z-score is 0.13 or 13%: 
qnorm(0.13, 0, 1, lower.tail = TRUE) # z = -1.13

#14. The area to the right of this z-score is 0.05 or 5%:
qnorm(0.05, 0, 1, lower.tail = FALSE) # z = 1.64
### OR ### 
qnorm(0.95, 0, 1, lower.tail = TRUE)

#15. The area to the left of this z-score is 0.80:
qnorm(0.80, 0, 1, lower.tail = TRUE) # z = 0.84

#16. The middle 30% of z-scores lie between these two z-scores:
qnorm(0.65, 0, 1, lower.tail = TRUE) # z = 0.39
qnorm(0.35, 0, 1, lower.tail = TRUE) # z = -0.39

# 50% - (30%/2)
# 50% + (30%/2)

#17. The middle 45% of z-scores lie between these two z-scores:
qnorm(0.725, 0, 1, lower.tail = TRUE) # z = 0.60 
qnorm(0.275, 0, 1, lower.tail = TRUE) # z = -0.60

qnorm(0.275, 0, 1, lower.tail = TRUE)
qnorm(0.275, 0, 1, lower.tail = FALSE)

0.50 - 0.45/2
0.50 + 0.45/2


### 7.2 ########################################################################

### other normal distributions

# pnorm(x, mu, sigma, lower.tail = ) & qnorm(area, mu, sigma, lower.tail = )

# baby weight example: mean = 11.5, standard deviation = 2.7

#18.) P(X > 13) = 0.2893 
pnorm(13, 11.5, 2.7, lower.tail = FALSE)

#19.) P(X < 15) = 0.9026
pnorm(15, 11.5, 2.7, lower.tail = TRUE)

#20.) P(10 < X < 14) = 0.5335
pnorm(14, 11.5, 2.7, lower.tail = TRUE) - pnorm(10, 11.5, 2.7, lower.tail = TRUE)

#21.) P(X > 17) = 0.0208
pnorm(17, 11.5, 2.7, lower.tail = FALSE)

#22.) P(X < 7) = 0.0478
pnorm(7, 11.5, 2.7, lower.tail = TRUE)

#23.) 75th percentile = 13.32 lbs. 
qnorm(0.75, 11.5, 2.7, lower.tail = TRUE)

#24.) 15th percentile = 8.70 lbs. 
qnorm(0.15, 11.5, 2.7, lower.tail = TRUE)

#25.) top 5% (95th percentile) = 15.94 lbs. 
qnorm(0.95, 11.5, 2.7, lower.tail = TRUE)
### OR ###
qnorm(0.05, 11.5, 2.7, lower.tail = FALSE)

#26.) middle 20% = 10.82 lbs. and 12.18 lbs. 
qnorm(0.4, 11.5, 2.7, lower.tail = TRUE)
qnorm(0.6, 11.5, 2.7, lower.tail = TRUE)

########################################

# bills example: mean = 110.14, standard deviation = 22.5

#27.) P(X > 130) = 0.1887
pnorm(130, 110.14, 22.5, lower.tail = FALSE)

#28.) P(85 < X < 140) = 0.7758
pnorm(140, 110.14, 22.5, lower.tail = TRUE) - pnorm(85, 110.14, 22.5, lower.tail = TRUE)

#29.) P(X < 120) = 0.6694
pnorm(120, 110.14, 22.5, lower.tail = TRUE)

#30.) 30th percentile = $98.34
qnorm(0.30, 110.14, 22.5, lower.tail = TRUE)

#31.) upper 15% cut-off = $133.46
qnorm(0.15, 110.14, 22.5, lower.tail = FALSE)
qnorm(0.85, 110.14, 22.5, lower.tail = TRUE)

#32.) P(X > 200) = 0.00003 
pnorm(200, 110.14, 22.5, lower.tail = FALSE)


### 7.3 ########################################################################

# apply the central limit theorem for sample means 

# EPA example: population mean = 28, pop. standard deviation = 3

#33. n = 60, xbar mean = 28, xbar standard deviation = 3/sqrt(60)

#34. P(xbar < 27)
pnorm(27, 28, 3/sqrt(60), lower.tail = TRUE) # 0.0049

#35. P(xbar > 28.5)
pnorm(28.5, 28, 3/sqrt(60), lower.tail = FALSE) # 0.0984

#36. P(27 < xbar < 29.5)
pnorm(29.5, 28, 3/sqrt(60), lower.tail = TRUE) - pnorm(27, 28, 3/sqrt(60), lower.tail = TRUE) # 0.9950

#37. Find 75th percentile. 
qnorm(0.75, 28, 3/sqrt(60), lower.tail = TRUE) # 28.26 mpg 

#38. Find top 5%. 
qnorm(0.05, 28, 3/sqrt(60), lower.tail = FALSE) # 28.64 mpg 

qnorm(0.95, 28, 3/sqrt(60), lower.tail = TRUE)

### 7.4 ########################################################################

# apply the central limit theorem for sample proportions 

# p = 0.63      1-p = 0.37      n = 300

#39. n*p = 189      n*(1-p) = 111
300*0.63
300*0.37

#40. phat mean = 0.63     phat standard deviation = sqrt(0.63*0.37/300) ~ 0.0279
sqrt(0.63*0.37/300)

#41. P(phat > 0.67) = 0.0756
pnorm(0.67, 0.63, sqrt(0.63*0.37/300), lower.tail = FALSE)

#42. P(phat < 0.55) = 0.0021
pnorm(0.55, 0.63, sqrt(0.63*0.37/300), lower.tail = TRUE)

#43. P(0.60 < phat < 0.70) = 0.8531
pnorm(0.70, 0.63, sqrt(0.63*0.37/300), lower.tail = TRUE) - pnorm(0.60, 0.63, sqrt(0.63*0.37/300), lower.tail = TRUE)

#44. What phat is at the 10th percentile? = 0.5943
qnorm(0.10, 0.63, sqrt(0.63*0.37/300), lower.tail = TRUE)
