##### Section 5.1 ##############################################################

# Probability of equally likely outcomes = k/n 

# Example: rolling a 6-sided die 
# Event A = rolling a 5
# Probability = P(A) = 1/6

k = 1 # number of events in sample space that satisfy A
n = 6 # number of events in sample space 
prob = k/n 
prob # 0.1667

# Empirical probability - baby weights example: 
x = 313752 # freq. of low birth weight
n = (313752 + 3477960) # total number of births recorded 
prob = x/n
prob # 0.0827

##### Section 5.2 ##############################################################

# Compound Events 

# Books example 
historical = 5
scifi = 2
poetry = 3
fantasy = 4
total = 14
#1.) P(poetry or sci-fi) = 0.3571
(poetry + scifi)/total
#2.) P(historical or fantasy) = 0.6429
(historical + fantasy)/total

# Books example with short names 
his = 5
sf = 2
p = 3
f = 4
tot = 14
#1.) P(poetry or sci-fi) = 0.3571
(p + sf)/tot
#2.) P(historical or fantasy) = 0.6429
(his + f)/tot

# Dinosaurs example
carnivore = 44 + 26
omnivore = 18 + 14
herbivore = 23 + 37
nocturnal = 44 + 18 + 23
diurnal = 26 + 14 + 37
total = nocturnal + diurnal # 162 
total = carnivore + omnivore + herbivore # 162
#1.) 
nocturnal/total # 0.5247
#2.)
herbivore/total # 0.3704
#3.)
(carnivore + omnivore)/total # 0.6296
#4.)
(nocturnal + carnivore - 44)/total # 0.6852
#5.) 
(herbivore + diurnal - 37)/total # 0.6173
#6.)
(carnivore + herbivore)/total # 0.8025

# Complements 

Z = 0.23
Z_not = 1 - Z # 0.77

H_not = 0.19 
H = 1 - H_not # 0.81

##### Section 5.3 ##############################################################

# Conditional 

I = 0.12 # probability of interview
JgI = 0.28 # probability of job given interview 
I*JgI # 0.0336 = probability of both 

# Independence 

p4 = 1/6 # probability of rolling a 4
(p4)^2 = # 0.0278 = probability of rolling a 4 twice in a row 
  
# "at least one" problems 
  
win = 0.67
lose = 1 - win
1 - lose^3
  
##### Section 5.4 ##############################################################

# permutations 

n = 
r = 
factorial(n)/factorial(n-r)

# combinations 

n = 
r = 
choose(n,r)










