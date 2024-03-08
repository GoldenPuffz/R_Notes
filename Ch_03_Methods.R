### CHAPTER 3 METHODS - NUMERICAL SUMMARIES / DESCRIPTIVE STATISTICS ###########

### 3.1 - Measures of Center ###################################################

# Use mean() to find both the population mean (mu) and the sample mean (xbar).

n1 <- c(5.13, 8, 2, -5.5, 9.002) 

mean(n1) # mean = 3.7264 

sum(n1)/length(n1)

######################################

# Use median() to find the median of a variable. 

median(n1) # 5.13

sort(n1)

n2 <- c(5.13,	8,	2,	-5.5,	9.002, 14.99)

median(n2) # 6.565

sort(n2)

(5.13 + 8)/2

######################################

# Run this code to create a function that finds the mode: 

mode <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u)) 
  if((max(tab) > 1) & length(unique(tab)) != 1) {
    print(u[tab==max(tab) & tab>1])
  }
  else {
    print("There is no mode.")
  }
}

n3 <- c(1, 3, 1, 6, 5, 1, 3, 9, 7, 3) 

mode(n3)

n4 <- c("apple", "banana", "banana", "cherry", "cherry", "cherry")

mode(n4)

table(n4)

######################################

### 3.2 - Measures of Spread ###################################################

n5 <- c(2.7, 8.18, -3.04,	0.012, 10.99, -5.21)

# Use max() - min() to find the range. 

max(n5) - min(n5) # 16.2

# NOTE: There is a function called range(), but it will only print for you 
# the maximum and minimum values, not the difference between them. 

range(n5)

10.99 - (-5.21)

######################################

n6 <- c(100, 93, 92, 124, 121, 101, 123, 110, 110, 96)
n7 <- c(140, 131, 152, 124, 161, 121, 122, 160, 110, 120)
n8 <- c(65, 38, 66, 14, 33, 62, 29)
mean(n6)
2.7 - 2.272
0.428^2

# Population variance: 
# Run this code to create a function that finds the population variance. 

pop.var <- function(x) {sum((x - mean(x))^2)/length(x)}

pop.var(n8) # 33.39941

# Sample variance: var()

var(n6) # 40.07929 

mean(n6)

n6 - mean(n6)

sum(n6 - mean(n6))

round((n6 - mean(n6))^2, 3)

sum((n6 - mean(n6))^2)

200.3964/6

200.3964/5

######################################

# Population standard deviation:

pop.sd <- function(x) {sqrt(sum((x - mean(x))^2)/length(x))}

pop.sd(n6) # 5.779222

sqrt(33.39941)

# Sample standard deviation: 

sd(n7) # 6.33082

sqrt(40.07929)

######################################

# The Empirical Rule

# mean = mu, standard deviation = sigma 

# Yoshi example

mu = 112
sigma = 4
units = "pounds"

mu - 2*sigma # 104 is 2 standard deviations BELOW the mean. 

mu + 3*sigma # 124 is 3 standard deviations ABOVE the mean. 

print(paste0("Approximately 68% of the data values lie between ", 
             mu - 1*sigma, " and ", mu + 1*sigma, " ", units, ".")) 

print(paste0("Approximately 95% of the data values lie between ", 
             mu - 2*sigma, " and ", mu + 2*sigma, " ", units, "."))

print(paste0("Approximately 99.7% of the data values lie between ", 
             mu - 3*sigma, " and ", mu + 3*sigma, " ", units, "."))

######################################

# Chebyshev's Inequality 

# Aircraft bolts example:

mu = 125
sigma = 1
units = "millimeters" 
  
print(paste0("At least 75% of the data values lie between ",
             mu - 2*sigma, " and ", mu + 2*sigma, " ", units, "."))

print(paste0("At least 88.9% of the data values lie between ",
             mu - 3*sigma, " and ", mu + 3*sigma, " ", units, "."))

######################################


### 3.3 - Measures of Position #################################################

# z-scores

# z = (x - mu)/sigma

# x = z*sigma + mu

# height example (men):

(62 - 69.4)/3.1 

# z = -2.39

# height example (women):

(67 - 63.8)/2.8

# z = 1.14

######################################

# Quartiles 

n7 <- sort(c(40, 44, 38, 39, 60, 51, 49)) 
n8 <- sort(c(1, 2, 3, 5, 9, 9, 9, 11, 12, 12, 13, 13, 14, 14, 15, 16, 19, 19, 20, 21, 25, 29, 30, 32, 38, 40, 48, 52, 67, 86)) 
# Use sort() to make sure it's in ascending order. 

print(n7)

# first quartile = Q1: 

0.25*length(n7) # Position = 2.75, round up to 3. 

n7[6] # The 3rd data value is 21. 

# second quartile = median = Q2:

0.50*length(n7) # Position = 5.5, round up to 6. 

n7[6] # The 6th data value is 57. 

median(n7) 

# third quartile = Q3: 

0.75*length(n7) # Position = 8.25, round up to 9. 

n7[17] # The 9th data value is 117. 

######################################

# Percentiles 

# To find the data value at the 12th percentile: 

0.60*length(n7) # Position = 1.32, round up to 2. 

n7[5] # The data value in the 2nd position is 19. 

# To find the percentile of a given data value:

x = 20
  
100*(length(n7[n7<x]) + 0.5)/length(n7) # 13.64 = 14th percentile. 

######################################

# Outliers 

# lower boundary (LB) = Q1 - 1.5*IQR
# upper boundary (UB) = Q3 + 1.5*IQR

21 - 1.5*(117-21) # LB = -123 

# No data values less than -123. No lower outliers. 

117 + 1.5*(117-21) # UB = 261

print(n7)

# No data values greater than 261. No upper outliers. 

######################################

# Box plots 

boxplot(n7, horizontal = T)

# Presidents example from teaching notes: 

orders <- c(48, 79, 217, 92, 6, 96, 113, 143, 140, 185, 1081, 724, 1803, 522, 
            1203, 968, 3721, 907, 484, 214, 325, 346, 169, 320, 381, 166, 364, 
            291, 277, 114)

o <- sort(orders)
print(o)

length(o) # n = 30
mean(o) # xbar = 516.63
median(o) # med = 284
mode(o) # no modes 
min(o) # min = 6
max(o) # max = 3,721
max(o) - min(o) # range = 3,715
var(o) # sample variance = 535,786.9
sd(o) # sample standard deviation = 731.97

0.25*length(o)
o[8] # Q1 = 140
0.75*length(o)
o[23] # Q3 = 522

Q1 = 140
Q3 = 522
iqr = Q3 - Q1 # IQR = 382 
Q1 - 1.5*iqr # LB = -433
Q3 + 1.5*iqr # UB = 1,095 

# outliers = 1203, 1803, 3721

print(o)

# highest value inside boundaries = 1,081

boxplot(o, horizontal = T, main = "Boxplot of Presidential Orders")

######################################

# Comparative Box plots: boxplot(variable ~ subcategory)

boxplot(iris$Petal.Length ~ iris$Species, verticle = F,
        main = "Comparative Boxplots: Petal Length by Iris Species",
        xlab = "Length (cm)", ylab = "Species")

