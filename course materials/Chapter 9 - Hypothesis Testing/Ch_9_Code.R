### CHAPTER 9 METHODS - HYPOTHESIS TESTING #####################################

### 9.2 - H.T. for means (sigma known)

# sociologist example 

# null hypothesis: mu = 12
# alternate hypothesis: mu > 12

mu = 12
n = 100
xbar = 12.98
sigma = 3
alpha = 0.05 

z = (xbar - mu)/(sigma/sqrt(n)) # z = 3.2667

# p-value = P(Z > 3.2667) = 0.0005
pnorm(z, 0, 1, lower.tail = FALSE)  

# p-value < alpha --> reject null 

# Since the p-value (P=0.0005) is less than alpha of 0.05, we reject the 
# null hypothesis and accept the alternate. There IS sufficient evidence to 
# suggest that the mean years of education is higher than 12. 

#------------------------------

# H0: mu = 5
# H1: mu < 5

mu = 5
n = 87
xbar = 4.5
sigma = 25
alpha = 0.05 

z = (xbar - mu)/(sigma/sqrt(n)) # z = -0.19

pnorm(z, 0, 1, lower.tail = TRUE) # 0.426

# Since the p-value (P=0.426) is greater than alpha of 0.05, we fail to reject 
# the null hypothesis and therefor reject the alternate. There IS NOT sufficient 
# evidence to suggest that the mean is less than 5. 
# (We would come to the same conclusion with a significance level of 0.10.) 

#-----------------------------------

# scale calibration example 

# H0: mu = 1,000
# H1: mu =/= 1,000 

mu = 1000
n = 50
xbar = 1000.6
sigma = 2
alpha = 0.01

z = (xbar - mu)/(sigma/sqrt(n)) # z = 2.12

2*pnorm(z, 0, 1, lower.tail = FALSE) # 0.0339

# With a p-value of 0.0339, which is greater than alpha of 0.01, we fail to 
# reject the null hypothesis and therefor reject the alternate. There is not 
# sufficient evidence to suggest that the population mean scale reading is 
# different than 1,000 g. In other words, there is not a problem with the scale.

# However, if we used alpha of 0.05, our decision would be the opposite. 

#-----------------------------------

# water example 

# H0: mu = 15
# H1: mu < 15 

data <- c(11.4, 12.4, 13.9, 8.6, 11.2, 10.5, 14.5, 17.1, 15.2, 9.8, 8.1, 15.9)

mu = 15
n = 12
xbar <- mean(data)
sigma = 3

z = (xbar - mu)/(sigma/sqrt(n)) # z = -3.02 

round(pnorm(z, 0, 1, lower.tail = TRUE), 4) # p-value = 0.0013

# The sample mean of 12.38 is statistically significant. 
# Since the p-value of 0.0013 is less than alpha 0.01, we reject the null 
# hypothesis and accept the alternate. There is sufficient evidence to suggest
# that the population mean amount of lead is less than 15 micrograms/liter and 
# is safe to drink. 

################################################################################

### 9.3 - H.T. for means (sigma NOT known)

# family practitioners example 

# H0: mu = 178,258
# H1: mu > 178,258

mu = 178258
xbar = 192340
s = 42387
n = 55
df = n-1 

t = (xbar - mu)/(s/sqrt(n)) # 2.4638

# P(t > 2.4638) = p-value = 0.0085
pt(t, df, lower.tail = FALSE)

# Because the p-value (P=0.0085) is less than the significance level 0.05,
# we reject the null hypothesis and accept the alternate. There IS enough 
# evidence to suggest that the population mean salary for doctors in L.A.
# is greater than $178,258. 

#-----------------------------------

# diamonds example 

# H0: mu = 1.5
# H1: mu < 1.5 

mu = 1.5
xbar = 1.16
s = 0.14
n = 12
df = n-1 

t = (xbar - mu)/(s/sqrt(n)) # -8.41

pt(t, df, lower.tail = TRUE) # p-value = 0.000002

# With a p-value of 2.02x10^-6 (P=0.000002), we reject the null hypothesis
# and accept the alternate. There is sufficient evidence to suggest that 
# the population mean diamond weight at this retailer is less than 1.5 carats. 
# The p-value could also be printed as (P<0.0001). 

n = 12
xbar = 1.16
s = 0.14
df = n-1
confidence_level = 0.90
t = qt((1 - confidence_level)/2, df, lower.tail = FALSE)

xbar - t*s/sqrt(n)
xbar + t*s/sqrt(n) 

# confidence interval = (1.09, 1.23)

# We are 90% confident that the population mean diamond weight is between 
# 1.09 and 1.23 carats. The population mean as defined by the null 
# hypothesis, 1.5, is not inside this interval. (The entire interval is less 
# than 1.5.) Therefore, we will reject the null hypothesis. 

#-----------------------------------

# Ho: mu = 3
# H1: mu =/= 3

mu = 3
xbar = 3.09
s = 2.87
n = 1298
df = n-1 

t = (xbar - mu)/(s/sqrt(n)) # 1.13

# p-value = P(t < -1.13 OR t > 1.13) = 0.2588
2*pt(t, df, lower.tail = FALSE)

# With a large p-value (P=0.2588), we fail to reject the null hypothesis. 
# There is not enough evidence to suggest that the population mean hours 
# watched is any different than 3 hours. 

################################################################################

### 9.4 - H.T. for proportions 

# spam example 

# H0: p = 0.718
# H1: p > 0.718 

p = 0.718 
n = 500
x = 382
phat = x/n # 0.764

z = (phat - p)/sqrt((p*(1-p))/n) # test statistic z = 2.2859

pnorm(z, 0, 1, lower.tail = FALSE) # p-value = 0.0111 

# Because the p-value (P=0.0111) is less than the significance level 0.05,
# we reject the null hypothesis and accept the alternate. There IS enough 
# evidence to suggest that the population proportion of spam 
# messages is greater than 0.718.

# Because the p-value (P=0.0111) is greater than the significance level 0.01,
# we fail to reject the null hypothesis and reject the alternate. There IS NOT
# enough evidence to suggest that the population proportion of spam 
# messages is greater than 0.718.

#-----------------------------------

# kids' phone example 

# p = 0.55
# p =/= 0.55 

p = 0.55 
n = 802
x = 449
phat = x/n # 0.5599

z = (phat - p)/sqrt((p*(1-p))/n) # z = 0.56

2*pnorm(z, 0, 1, lower.tail = FALSE)

# p-value = P(Z < -0.56 or Z > 0.56) = 0.5750 

# With such a large p-value (P=0.5750), we fail to reject the null hypothesis. 
# There is no evidence to doubt the company's claim. In other words, 
# there is not sufficient evidence that the population proportion of kids 
# who have their own phone is different than 55%. 

#-----------------------------------

# football example 

# H0: p = 0.5
# H1: p > 0.5 

p = 0.50 
n = 780
x = 445
phat = x/n # 0.57

z = (phat - p)/sqrt((p*(1-p))/n) # z = 3.94

pnorm(z, 0, 1, lower.tail = FALSE) # 0.00004

# The small p-value (P<0.0001) indicates that we should reject the null 
# hypothesis. There is sufficient evidence that there is a home-field advantage
# for high school football players in this county. 

#-----------------------------------
