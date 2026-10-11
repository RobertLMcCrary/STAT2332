### CHAPTER 5 METHODS ####################################

### Review Relative Frequency: Slide 5 ###################

critters <- c("alligator","alligator","alligator","alligator",
              "frog","frog","frog","frog","frog","frog",
              "snake","snake","snake","snake",
              "turtle","turtle","turtle","turtle","turtle","turtle",
              "turtle","turtle","turtle","turtle","turtle")

table(critters) # frequencies 

table(critters)/length(critters) # relative frequencies (decimals)

100*table(critters)/length(critters) # relative frequencies (percent)

#############################################

# Housing Data: Slide 13-14

own_house <- 4753 

own_condo <- 1478 

rent_house <- 912 

rent_apt <- 2857 

TOTAL <- 10000 

own_condo/TOTAL

rent_apt/TOTAL

(own_condo + own_house)/TOTAL

(rent_apt + rent_house)/TOTAL

(own_house + rent_house)/TOTAL

#############################################

# CDC Data: Slide 15-16

low <- 313752

not_low <- 3477960

total <- low + not_low 

low/total

not_low/total 

1 - low/total 

#############################################

# Rabbits: Slide 17-18 

white <- 5 
black <- 2
spotted <- 3
brown <- 4  

total <- white + black + spotted + brown # 14 

brown/total

(brown + white)/total

1 - spotted/total

(black + spotted)/total

#############################################

# Voting Contingency Table: Slide 31-32

523/1000 
279/1000 
87/1000 
(112 + 365)/1000 
(365 + 279 – 103)/1000 
0/1000
262/365 
262/721

#############################################

# Smaug example: 33-34

N = 15 + 12 + 22 + 9
12/58 
(9 + 15)/58 
(22/58)*(9/58)*(12/58)
(15/58)*(12/57)
(9/58)*(8/57)*(7/56)

#############################################

# Large Populations: Slide 35

1/173000000
1/172999999

# 5.78 x 10^-9 = 0.00000000578

#############################################

# At least once problems: Slide 38 

P_H = 0.55
P_T = 1 - P_H

1 - P_T^3

#############################################

# Principle of Counting: Slide 40-41

5*3*2*3*2
5*3*2*3
1*3*2*1

#############################################

# Permutations: Slide 42-44

# n = total number in sample
# r = the number of items chosen

# PERMUTATIONS 

factorial(n)/factorial(n-r)

n=5
r=3
factorial(n)/factorial(n-r)

n=12
r=3
factorial(n)/factorial(n-r) 

n=11
r=2
factorial(n)/factorial(n-r)

#############################################

# Combinations: Slide 45-47 

# n = total number in sample
# r = the number of items chosen

# COMBINATIONS 

choose(n, r)

n=35
r=2
choose(n, r) 

choose(31, 2)

choose(16,2)/choose(35,2)

choose(16,1)*choose(19,1)
# or...
16*19

1 - (choose(19,2)/choose(35,2))

n=20
r=3
factorial(n)/factorial(n-r) 
choose(n, r) 


