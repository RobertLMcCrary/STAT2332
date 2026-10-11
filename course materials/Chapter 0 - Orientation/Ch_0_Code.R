
### ORIENTATION TO R STUDIO #########################

# Text that follows a "#" symbol is a comment. 
# Comments don't "do" anything. 
# They are used for annotations. 

# To run code, click on a line, or highlight 
# multiple lines, and click "run."
# You can also type ctrl + enter. 

# Remember: R is case-sensitive!!! 

#----------------------------------------------------

### Basic Math Operations

3 + 7 # addition 

11 - 28 # subtraction 

4 * 3 # multiplication 

9 / -8 # division 

3**2 # exponents 
3^2

sqrt(77) # square root 

8^(1/3) # cube root 

factorial(4) # factorial = 4!

# order of operations: PEMDAS 

3-7*88/-2

(3-7)*88/-2

#----------------------------------------------------

### Creating Objects

# To create an object: object_name <- assigned_value 

a <- 3 # numerical objects 

print(a)
print(A)

A <- 5

a <- -7 

# R will assume the last line you ran (check environment)

a + A

a - A

2*a+7/A

color <- "yellow" # character/string objects 

print(color)

color2 <- "green"

shape <- "square and circle"

zip <- "30062"

zip + 3

# A vector is an object that contains a list of values. 

my_numbers <- c(3, 5.55, -6, 12.0003) # numerical 
print(my_numbers)

friends <- c("Matt", "Karen", "Foggy", "Claire") # character 
print(friends) 

#----------------------------------------------------

### Saving a Script #################################

# Always save your R Studio work in a script. 
# Go to File - New File - R Script.
# Save a file for each assignment, for example "ch2hw.R".
# An R script is saved as a .R file.
# You can save and edit a script like a Word document. 
# Type and run your code in the script, 
# NOT directly in the console. 

#----------------------------------------------------

### Orientation Practice Sheet ######################

#1. Save your script as "Orientation_Practice.R". 

#2. Solve: ((4/3)^3 - 8.44 + sqrt(98))/-7 

#3. Make an object called B and assign it a value of 33.978. 

#4. Make an object called C and assign it a value of 7!. 

#5. Solve: B + 2*C 

#6. Make a vector called numbers that includes: 
#   your height in inches, your age, and the number 
#   of siblings you have. Print it in the console. 

#7. Make a vector called family that includes the 
#   names of four family members. Print it in the console. 

#----------------------------------------------------

