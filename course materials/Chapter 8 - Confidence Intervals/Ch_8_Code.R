### CHAPTER 8 METHODS 

### 8.1 - Confidence Intervals for Means (sigma known) #########################

xbar - z*sigma/sqrt(n) # lower boundary 
xbar + z*sigma/sqrt(n) # upper boundary 

# z = critical value 

sigma/sqrt(n) # standard error 
z*sigma/sqrt(n) # margin of error 

# battery lifetimes 

sigma = 20
n = 50
xbar = 120.1
confidence_level = 0.95
z = qnorm((1 - confidence_level)/2, 0, 1, lower.tail = FALSE)

xbar - z*sigma/sqrt(n) # lower boundary 
xbar + z*sigma/sqrt(n) # upper boundary 

# The point estimate is 120.1.
# The critical value is 1.96.
# The standard error is 2.828427.
# The margin of error is 5.543615. 

# confidence interval = (114.56, 125.64) 

# We are 95% confident that the population mean battery
# lifetime is between 114.56 and 125.64 hours. 

#----------------------------------------

# credit score example 

sigma = 40
n = 50
xbar = 730
confidence_level = 0.99
z = qnorm((1 - confidence_level)/2, 0, 1, lower.tail = FALSE)

LB = round(xbar - z*sigma/sqrt(n),2) # lower boundary 
UB = round(xbar + z*sigma/sqrt(n),2) # upper boundary 

print(paste0("(",LB,", ",UB,")"))

#------------

sigma = 40
n = 50
xbar = 730
confidence_level = 0.90
z = qnorm((1 - confidence_level)/2, 0, 1, lower.tail = FALSE)

LB = round(xbar - z*sigma/sqrt(n),2) # lower boundary 
UB = round(xbar + z*sigma/sqrt(n),2) # upper boundary 

print(paste0("(",LB,", ",UB,")"))

#----------------------------------------

# calculating a sample size 

n = (z*sigma/m)^2 

################################################################################

### 8.2 - Confidence Intervals for Means (sigma NOT known) #####################

xbar - t*s/sqrt(n) # lower boundary 
xbar + t*s/sqrt(n) # upper boundary 

# vocab test scores

n = 40
xbar = 88.4
s = 7.2
df = n-1
confidence_level = 0.95 # define confidence level as a decimal
t = qt((1 - confidence_level)/2, df, lower.tail = FALSE)

xbar - t*s/sqrt(n) # lower boundary 
xbar + t*s/sqrt(n) # upper boundary 

# confidence interval = (86.10, 90.70)

# We are 95% confident that the population mean test score is between 
# 86.10 and 90.70 percent. 

#------------------------------------------------

# calculating a sample size 

n = (z*sigma/m)^2
# OR 
n = (z*s/m)^2 

confidence_level = 0.95
z = qnorm((1 - confidence_level)/2, 0, 1, lower.tail = FALSE)
s = 3
m = 0.5
n = (z*s/m)^2
n

################################################################################

### 8.3 - Confidence Intervals for Proportions #################################

# candy example

phat - z*sqrt(phat*(1-phat)/n) # lower boundary 
phat + z*sqrt(phat*(1-phat)/n) # upper boundary 

n = 90
x = 14
phat = x/n
confidence_level = 0.92
z = qnorm((1 - confidence_level)/2, 0, 1, lower.tail = FALSE)

phat - z*sqrt(phat*(1-phat)/n) # lower boundary 
phat + z*sqrt(phat*(1-phat)/n) # upper boundary 

# confidence interval = (0.0887, 0.2224)

# We are 92% confident that the population proportion of people
# who favor the lime is between 0.0887 and 0.2224 
# (or between 8.87% and 22.24%). 

#-------------------------------------

# calculating a sample size 

n = ((z/m)^2)*phat*(1-phat)

confidence_level = 0.95
z = qnorm((1 - confidence_level)/2, 0, 1, lower.tail = FALSE)
m = 0.03
phat = 0.5
n = ((z/m)^2)*phat*(1-phat)
n

confidence_level = 0.95
z = qnorm((1 - confidence_level)/2, 0, 1, lower.tail = FALSE)
m = 0.03
phat = 0.28
n = ((z/m)^2)*phat*(1-phat)
n

