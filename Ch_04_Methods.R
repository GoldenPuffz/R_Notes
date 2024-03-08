##### CHAPTER 4 METHODS - CORRELATION & REGRESSION ############################# 

### Scatter plots = plot(x,y)

# Housing data: 

size <- c(2521, 2555, 2735, 2846, 3028, 3049, 3198, 3198)
price <- c(400, 426, 428, 435, 469, 475, 488, 455)

plot(size, price)

plot(size, price, main = "Scatterplot of House Price by Size (n=8)",
     xlab = "Size (square feet)", ylab = "Price ($1,000)",
     pch = 19, col = "blue", cex = 2, lwd = 3)

### Example from an existing data frame: 

plot(iris$Petal.Width, iris$Petal.Length, main = "Scatterplot of Petal Length by
     Petal Width in Irises (n=150)", xlab = "Width (cm)", ylab = "Length (cm)",
     pch = 9, col = "purple", cex = 2, lwd = 3)

############################################

### Correlation coefficient (r) = cor(x,y)

cor(size, price) # r = 0.901 
# Strong, positive correlation between house size and house price. 

cor(iris$Petal.Width, iris$Petal.Length) # r = 0.963 
# Strong, positive correlation between petal width and length for irises. 

##### 4.2 - Linear Regression ##################################################

data(trees) # black cherry trees 
View(trees)

# girth = diameter (inches) [mislabeled in the data set]
# height (feet)
# volume (cubic feet)

# Scatterplot of volume by height: 

tree_plot <- plot(trees$Height, trees$Volume, 
                  main = c("Scatterplot of Volume by Height in Black Cherry Trees (n=31)", 
                           sub = paste0("r = ", round(cor(trees$Height, trees$Volume), digits = 3))),
                  xlab = "Tree Height (feet)",
                  ylab = "Tree Volume (cubic feet)",
                  pch = 24, col = "darkgreen", bg = "darkgreen")


# How to create a linear regression model: lm(y ~ x, data = "data") 
# Add the line of best fit: abline()

model <- lm(Volume ~ Height, data = trees)
abline(model)

# Compute the coefficients of the line: 
summary(model)

# Write the equation of the line: 
yhat = -87.1236 + 1.5433*x

# Use the model to make predictions: example x = 77
x = 68.5
yhat = 1.5433*x - 87.1236 
yhat

# When x = 77, yhat = 31.7105 

############################################

# Crickets example: 

temp <- c(88.6, 71.6, 93.3, 84.3, 80.6, 75.2, 69.7, 82.0, 69.4, 83.3, 79.6, 
          82.6, 80.6, 83.5, 76.3)

chirps <- c(20.0, 16.0, 19.8, 18.4, 17.1, 15.5, 14.7, 17.1, 15.4, 16.2, 15.0, 
            17.2, 16.0, 17.0, 14.4)

p <- plot(temp, chirps, main = "Frequency of Cricket Chirps by Temperature",
          xlab = "Temperature (degrees Fahrenheit)", 
          ylab = "Frequency (Chirps per Second)",
          pch = 23, col = "brown", bg = "brown") 

cor(temp, chirps) # r = 0.835

m <- lm(chirps ~ temp)
abline(m)
summary(m)

yhat = -0.30914 + 0.21193*x 
x = 85
yhat

##### 4.3 - Linear Regression ##################################################

# Extrapolation for Trees: 

# Find the range of x-values: 
min(trees$Height)
max(trees$Height)

# We will only compute yhat based on x [63, 87]. 

############################################

# Outliers and influential points 

# Housing data: 

size <- c(2521, 2555, 2735, 2846, 3028, 3049, 3198, 3198)
price <- c(400, 426, 428, 435, 469, 475, 488, 455)

plot(size, price, main = "Scatterplot of House Price by Size (n=8)",
     xlab = "Size (square feet)", ylab = "Price ($1,000)",
     pch = 19, col = "blue", cex = 2, lwd = 3)
cor(size, price)

# How much do outliers matter? (Same housing data with added extreme values): 

# outlier in y 
size2 <- c(2521, 2555, 2735, 2846, 3028, 3049, 3198, 3198, 2799)
price2 <- c(400, 426, 428, 435, 469, 475, 488, 455, 904) 
plot(size2, price2, main = "Scatterplot of House Price by Size (n=9)",
     xlab = "Size (square feet)", ylab = "Price ($1,000)",
     pch = 19, col = "blue", cex = 2, lwd = 3)
cor(size2, price2)

# outlier in x 
size3 <- c(2521, 2555, 2735, 2846, 3028, 3049, 3198, 3198, 8823) 
price3 <- c(400, 426, 428, 435, 469, 475, 488, 455, 450)
plot(size3, price3, main = "Scatterplot of House Price by Size (n=9)",
     xlab = "Size (square feet)", ylab = "Price ($1,000)",
     pch = 19, col = "blue", cex = 2, lwd = 3)
cor(size3, price3)

# extreme value in both x and y
size4 <- c(2521, 2555, 2735, 2846, 3028, 3049, 3198, 3198, 9000) 
price4 <- c(400, 426, 428, 435, 469, 475, 488, 455, 700)
plot(size4, price4, main = "Scatterplot of House Price by Size (n=9)",
     xlab = "Size (square feet)", ylab = "Price ($1,000)",
     pch = 19, col = "blue", cex = 2, lwd = 3)
cor(size4, price4)

############################################

# More practice with Star Wars data 

install.packages("dplyr")
library(dplyr)
View(starwars)

# Let's just look at height vs. mass:
sw <- na.omit(starwars[,1:3])
View(sw)

plot(sw$height, sw$mass,
     main = "Scatterplot of Star Wars Characters: Mass by Height",
     xlab = "Height (cm)",
     ylab = "Mass (kg)",
     pch = 22, col = "darkblue", bg = "lightblue")

# There is one influential point, an outlier in y. 

max(sw$mass) # Maximum = 1,358 kg 
sw[sw$mass==1358,] # It belongs to Jabba Desilijic Tiure; let's remove it. 

sw2 <- sw[!sw$name=="Jabba Desilijic Tiure",]

# sw2 <- sw[!sw$mass==1358,]

# Now we can work with our new data frame, "sw2".

View(sw2)

plot(sw2$height, sw2$mass,
     main = "Scatterplot of Star Wars Characters: Mass by Height",
     xlab = "Height (cm)",
     ylab = "Mass (kg)",
     pch = 22, col = "darkblue", bg = "lightblue")

cor(sw2$height, sw2$mass)

m1 <- lm(sw2$mass ~ sw2$height)
abline(m1)
summary(m1)

range(sw2$height)

x = 183
yhat = -32.54076 + 0.62136*x
yhat

