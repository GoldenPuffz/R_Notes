### Chapter 6 Methods ##########################################################

# Undergrad classes example from teaching notes, page 4:

classes <- c("1", "2", "3", "4", "5", "6")
counts <- c(478, 645, 568, 1864, 1357, 88)
probs = round(counts/5000, 4)

t1 <- data.frame(classes, counts, probs)
View(t1)

install.packages("ggplot2")
library(ggplot2)
ggplot(t1) + geom_bar(aes(x=classes, y=probs), stat = 'identity') +
  labs(title = "Discrete Probability Histogram: Number of Classes Taken by Undergrads",
       x = "Number of Classes", y = "Probability")

################################################################################

# Mean, variance, standard deviation of a DISCRETE RANDOM VARIABLE 

# Classes example: use weighted.mean() to find mean. 

x <- c(1, 2, 3, 4, 5, 6) # x = number of classes 
probs <- c(478/5000, 645/5000, 568/5000, 1864/5000, 1357/5000, 88/5000)
weighted.mean(x, probs)

# Mean = 3.6482 = expected value 

# Use this method to find the variance: 

sum((x^2)*probs) - (weighted.mean(x, probs))^2

# variance = 1.708037 

# Use this method to find the standard deviation: 

sqrt(sum((x^2)*probs) - (weighted.mean(x, probs))^2)

# standard deviation = 1.306919 

sqrt(1.708037)

#####################################

# Roulette = 18 red +$1, 18 black -$1, 2 green -$1 

x <- c(1, -1, -1) 
probs <- c(18/38, 18/38, 2/38)

weighted.mean(x, probs) # mean 

sum((x^2)*probs) - (weighted.mean(x, probs))^2 # variance

sqrt(sum((x^2)*probs) - (weighted.mean(x, probs))^2) # standard deviation 

#####################################

# Business example 

x <- c(-30, 20, 40)
probs <- c(0.4, 0.5, 0.1)

weighted.mean(x, probs) # mean 

sum((x^2)*probs) - (weighted.mean(x, probs))^2 # variance

sqrt(sum((x^2)*probs) - (weighted.mean(x, probs))^2) # standard deviation 

################################################################################

### BINOMIAL DISTRIBUTION 

# P(X=x) = dbinom(x, n, p) 

# Ice cream example: 20% chance you win, with group of 10 what is probability of 3 winning

dbinom(3, 10, 0.2) # P(X=3) = 0.2013

# mean = n*p

10*0.2

# variance = n*p*(1-p)

10*0.2*0.8

# standard deviation = sqrt(n*p*(1-p))

sqrt(10*0.2*0.8)

# REMEMBER, you can either put numbers directly into your function, 
# OR define your variables and run the function with letters. 

n = 10
p = 0.2
x = 3

dbinom(x, n, p)

n*p # mean = 2

n*p*(1-p) # variance = 1.6

sqrt(n*p*(1-p)) # S.D. = 1.264911

####################################################

### Video games example 

n = 9
p = 0.5
x = 4 # remember to redefine each time 

dbinom(x, n, p)

#9.) P(X=4)
dbinom(4, 9, 0.5)

#10.) P(X<3) we can just add 3 functions
dbinom(0, 9, 0.5) + dbinom(1, 9, 0.5) + dbinom(2, 9, 0.5)
### OR ### pbinom assumes you mean less than or equal to 
pbinom(2, 9, 0.5)

# P(X <= x): pbinom(x, n, p)

#11.) P(X>3) = 1 - P(X <= 3)
1 - pbinom(3, 9, 0.5)

#12.) P(X >= 7) = 1 - P(X <= 6)
1 - pbinom(6, 9, 0.5)

#13.) P(4 <= X <= 6)
pbinom(6, 9, 0.5) - pbinom(3, 9, 0.5)

#14.) 

n*p # mean = 4.5

n*p*(1-p) # variance = 2.25

sqrt(n*p*(1-p)) # S.D. = 1.5

################################################################################




