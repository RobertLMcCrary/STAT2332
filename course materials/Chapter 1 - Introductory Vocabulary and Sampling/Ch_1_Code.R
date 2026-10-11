### CHAPTER 01 METHODS #############################

### 1.1 - Random Number Generation #################

# Use sample(range, n, replace = ) for numbers.  

# Take a random sample of 15 numbers that range 
# from 1 to 600 (NO duplicates):

sample(1:600, 15, replace = FALSE)

# Take a random sample of 10 numbers that range 
# from 5 to 25 (duplicates allowed): 

sample(5:25, 10, replace = TRUE)

####################################################

# Use sample(data, n) for character vectors. 

ships <- c("Serenity", "Black Pearl", "Bebop", 
           "Jenny", "Nautilus", "Icarus II")

# Take a random sample of 2 items from the vector "ships": 

sample(ships, 2, replace = FALSE) # repeat 

#####################################################

# Sub-setting data sets by a SRS: 

# Use data() and View() to load and view data sets 
# that already exist in R.  

data("mtcars")  
View(mtcars)

# Square brackets are used for sub-setting: [row, column]

mtcars[2,4] # 2nd row, 4th column = 110

mtcars[4,2] # 4th row, 2nd column = 6 

mtcars[9, ] # 9th row, all columns

mtcars[ ,3] # all rows, 3rd column 

mtcars[ , ]

# Take 5 random numbers from 1 to 32:

sample <- sample(1:32, 5, replace = FALSE)

# Subset mtcars by those row numbers from your sample above:

mtcars[sample, ] 

#####################################################

# Side Note: Exploring a Data Set ###################

data(mtcars)

?mtcars 

length(mtcars) # number of columns 

ncol(mtcars) # number of columns

nrow(mtcars) # number of rows

dim(mtcars) # number of rows and columns

summary(mtcars) # summary of each variable 

class(mtcars) # type of object 

class(mtcars$mpg) # type of variable  

#####################################################

### 1.2 - Variable Types and Object Types ###########

# QUALITATIVE VARIABLES = CHARACTER/STRING OBJECTS 

oceans <- c("Pacific", "Indian", "Atlantic", "Arctic") # nominal 

months <- c("Jan", "Feb", "Mar", "Apr") # ordinal 

area_codes <- c("706", "404", "912", "229") # nominal (identifier) 

# QUANTITATIVE VARIABLES = NUMERICAL OBJECTS 

days_at_sea <- c(44, 21, 13, 67, 9) # discrete

volume <- c(33.92, 40.05, 19.95, 11.62) # continuous 

# Notice how these two vectors differ (use the length() function): 

A <- c("red", "blue", "purple")
print(A)
length(A)

B <- c("red, blue, purple")
print(B)
length(B)

#####################################################





