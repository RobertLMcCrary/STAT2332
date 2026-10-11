# Chapter 0 Practice Solutions 

# R methods not necessary for math review 
# because we hadn't learned it yet. But please use
# going forward, after the R orientation. 

# 1. Round 14.98 to a whole number.

round(14.98) # 15

# 2. Convert 0.15% to a decimal.

0.15/100 # 0.0015

# 3. Solve:(12/−3)^3 × (145−246.7)/8 + |√22|

(12/-3)^3 * (145-246.7)/8 + sqrt(22) # 818.2904 
  
# 4. What is the slope of this line? y = (2/3)x − 11

# 2/3 

# 5. Simplify: 9!/4!

factorial(9)/factorial(4) # 15,120 

# or 

9*8*7*6*5 # 15,120

# 6. Round −21.89 to an integer.

round(-21.89) # -22 

# 7. Convert this to standard notation: 1.82 × 10^−6

# 0.00000182 
# Please note there are FIVE zeros in front of the 1. 

# 8. Convert 0.067 to a percentage.

0.067*100 # 6.7%

# 9. Round 1,139.0897 to three decimal places.

round(1139.0897, 3) # 1,139.090

# 10. Convert 3/8 to a percentage.

100*3/8 # 37.5% 

# 11. What is 49% of 11.645?

11.645*0.49 # 5.70605 

# 12. Write 3,988,000,000 in scientific notation.

# 3.988 x 10^9

# 13. Convert 34.75% to a decimal.

34.75/100 # 0.3475

# 14. Arrange these values in descending order:
  
a <- sqrt(5.6)     # 2.366
b <- -91/2.66      # -34.2
c <- 4.9 * 10^8    # 490,000,000
d <- 0.77/100      # 0.0077
e <- factorial(6)  # 720

sort(c(a,b,c,d,e), decreasing = TRUE)

# c, e, a, d, b 

#----------------------------------------------------------

### Orientation Practice Sheet ######################

#1. Save your script as "Orientation_Practice.R". 

#2. Solve: ((4/3)^3 - 8.44 + sqrt(98))/-7 

# -0.5471236

#3. Make an object called B and assign it a value of 33.978. 

B <- 33.978

#4. Make an object called C and assign it a value of 7!. 

C <- factorial(7)

#5. Solve: B + 2*C 

B+2*C # 10,113.98

#6. Make a vector called numbers that includes: 
#   your height in inches, your age, and the number 
#   of siblings you have. Print it in the console. 

numbers <- c(64, 37, 2)

print(numbers)

#7. Make a vector called family that includes the 
#   names of four family members. Print it in the console. 

family <- c("Katherine", "Ben", "Esther", "Abaddon")

print(family)
