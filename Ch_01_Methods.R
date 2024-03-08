### CHAPTER 01 METHODS #########################################################

### 1.2 - Variable Types and Object Types ######################################

# QUALITATIVE VARIABLES = CHARACTER/STRING OBJECTS 

oceans <- c("Pacific", "Indian", "Atlantic", "Arctic") # nominal 

months <- c("Jan", "Feb", "Mar", "Apr") # ordinal 

area_codes <- c("706", "404", "912", "229") # nominal (identifier) 

# QUANTITATIVE VARIABLES = NUMERICAL OBJECTS 

days_at_sea <- c(44, 21, 13, 67, 9) # discrete

volume <- c(33.92, 40.05, 19.95, 11.62) # continuous 

# Notice how these two vectors differ: 

A <- c("red", "blue", "purple")
print(A)
length(A)

B <- c("red, blue, purple")
print(B)
length(B)

### 1.1 - Random Number Generation and Random Samples ##########################

# Use sample.int(range, n) for numbers.  

# Take a random sample of 15 numbers that range from 1 to 600 (NO duplicates):
sample.int(600, 15, replace = FALSE) 

# Take a random sample of 10 numbers that range from 1 to 25 (duplicates allowed): 
sample.int(25, 10, replace = TRUE)

####################################

# Use sample(data, n) for any variable type, including character/strings.

ships <- c("Serenity", "Black Pearl", "Bebop", "Jenny", "Nautilus", "Icarus II")

# Take a random sample of 2 items from the vector "ships": 
sample(ships, 2)

####################################

# Sub-setting data sets by a random selection:

# Use data() and View() to load and view a data set that already exists in R.  

data("mtcars") # a car data set with 32 observations 
View(mtcars)

# Take 5 random numbers from 1 to 32:
sample <- sample.int(32, 5, replace = FALSE) 

# Square brackets are used for sub-setting: [row, column]

# Subset mtcars by those row numbers from your sample above:  
mtcars[sample, ] 

mtcars[2, 4] # 2nd row, 4th column = 110

mtcars[4, 2] # 4th row, 2nd column = 6 

mtcars[9, ] # 9th row, all columns

mtcars[ , 3] # all rows, 3rd column 

################################################################################

