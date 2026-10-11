### CHAPTER 7 METHODS ##########################################################

### 7.1 ########################################################################

### Uniform Distribution Probabilities

# P(X<x) = punif(x, min, max, lower.tail = TRUE)

punif(25, 0, 30, lower.tail = TRUE) - punif(15, 0, 30, lower.tail = TRUE)

punif(20, 0, 30, lower.tail = FALSE)

punif(10, 0, 30, lower.tail = TRUE) - punif(5, 0, 30, lower.tail = TRUE)

punif(19, 0, 30, lower.tail = TRUE) - punif(7, 0, 30, lower.tail = TRUE)

#######################################################

### Calculate areas under the STANDARD normal curve: 

### pnorm(z, mean, SD, lower.tail = TRUE or FALSE)

### Find the cut-off values for a corresponding area: 

### qnorm(area, mean, SD, lower.tail = TRUE or FALSE)

# less than = lower tail true
# greater than = lower tail false 

# P(Z < 1)
pnorm(1, 0, 1, lower.tail = TRUE) # 0.8413
# or...
round(pnorm(1, 0, 1, lower.tail = TRUE), 4) # 0.8413

# P(Z > -2)
pnorm(-2, 0, 1, lower.tail = FALSE) # 0.9772

# P(Z < 0.458)
pnorm(0.458, 0, 1, lower.tail = TRUE) # 0.6765

# P(-1 < Z < 1)
pnorm(1, 0, 1, lower.tail = T) - pnorm(-1, 0, 1, lower.tail = T) # 0.6827

# P(1.7 < Z < 2.06)
pnorm(2.06, 0, 1, lower.tail = T) - pnorm(1.7, 0, 1, lower.tail = T) # 0.0249

# Area left = 0.13 
qnorm(0.13, 0, 1, lower.tail = TRUE) # Z = -1.13
# or... 
round(qnorm(0.13, 0, 1, lower.tail = TRUE), 2) # Z = -1.13

# Area right = 0.05 
qnorm(0.05, 0, 1, lower.tail = FALSE) # Z = 1.64

# Area left = 0.8 
qnorm(0.8, 0, 1, lower.tail = T) # Z = 0.84

# Middle 30%: (100-30)/2 = 35% in tails 
qnorm(0.35, 0, 1, lower.tail = T) # Z = -0.39
qnorm(0.35, 0, 1, lower.tail = F) # Z = 0.39

# Middle 45%: (100-45)/2 = 27.5% in tails
qnorm(0.275, 0, 1, lower.tail = T) # Z = -0.60
qnorm(0.275, 0, 1, lower.tail = F) # Z = 0.60

### 7.2 ########################################################################

### Other normal distributions

mu = 11.5
sigma = 2.7

# For the image: 

print(c(mu-3*sigma, 
        mu-2*sigma, 
        mu-sigma, 
        mu, 
        mu+sigma, 
        mu+2*sigma, 
        mu+3*sigma))

# pnorm(x, mu, sigma, lower.tail = ) & qnorm(area, mu, sigma, lower.tail = )

# P(X > 13) = 0.2893 
pnorm(13, 11.5, 2.7, lower.tail = FALSE)

# P(X < 15)
pnorm(15, 11.5, 2.7, lower.tail = TRUE)

# P(10 < X < 14)
pnorm(14, 11.5, 2.7, lower.tail = T) - pnorm(10, 11.5, 2.7, lower.tail = T)

# P(X > 17)
pnorm(17, 11.5, 2.7, lower.tail = F)

# P(X < 7) = unusual? 
pnorm(7, 11.5, 2.7, lower.tail = T)

# Area left = 0.75 
qnorm(0.75, 11.5, 2.7, lower.tail = T) # X = 13.32 lbs 

# Area left = 0.15 
qnorm(0.15, 11.5, 2.7, lower.tail = T) 

# Area right = 0.05 
qnorm(0.05, 11.5, 2.7, lower.tail = F)
# or...
qnorm(0.95, 11.5, 2.7, lower.tail = T)

# Middle 20%: 40% in tails 
qnorm(0.4, 11.5, 2.7, lower.tail = T)
qnorm(0.4, 11.5, 2.7, lower.tail = F)
# 10.82 lbs and 12.18 lbs 

#######################################################

mu = 110.14
sigma = 22.50

# For the image: 

print(c(mu-3*sigma, 
        mu-2*sigma, 
        mu-sigma, 
        mu, 
        mu+sigma, 
        mu+2*sigma, 
        mu+3*sigma))

### 7.3 ########################################################################

# Apply the central limit theorem for sample means 

# EPA example: population mean = 28, pop. standard deviation = 3

# n = 60, xbar mean = 28, xbar standard deviation = 3/sqrt(60)

# For the image: 

M = 28
SD = 3/sqrt(60)

print(round(c(
        M-3*SD, 
        M-2*SD, 
        M-SD, 
        M, 
        M+SD, 
        M+2*SD, 
        M+3*SD),1))

# n = 60, xbar mean = 28, xbar standard deviation = 3/sqrt(60) = 0.387

# P(xbar < 27)
pnorm(27, 28, 3/sqrt(60), lower.tail = TRUE) # 0.0049

# P(xbar > 28.5)
pnorm(28.5, 28, 3/sqrt(60), lower.tail = FALSE) # 0.0984

# P(27 < xbar < 29.5)
pnorm(29.5, 28, 3/sqrt(60), lower.tail = T) - pnorm(27, 28, 3/sqrt(60), lower.tail = T) # 0.9950

# Area left = 0.75 
qnorm(0.75, 28, 3/sqrt(60), lower.tail = T) # 28.26 MPG

# Area right = 0.05 
qnorm(0.05, 28, 3/sqrt(60), lower.tail = F) # 28.64 MPG

### 7.4 ########################################################################

# Apply the central limit theorem for sample proportions 

# p = 0.63      1-p = 0.37      n = 300

# For the image: 

M = 0.63
SD = sqrt(0.63*0.37/300)

print(round(c(
  M-3*SD, 
  M-2*SD, 
  M-SD, 
  M, 
  M+SD, 
  M+2*SD, 
  M+3*SD),2))

# n*p = 189      n*(1-p) = 111
300*0.63
300*0.37

# phat mean = 0.63     phat standard deviation = sqrt(0.63*0.37/300) ~ 0.0279
sqrt(0.63*0.37/300)

# P(phat > 0.67) = 0.0756
pnorm(0.67, 0.63, sqrt(0.63*0.37/300), lower.tail = FALSE)

# P(phat < 0.55)
pnorm(0.55, 0.63, sqrt(0.63*0.37/300), lower.tail = TRUE) # 0.0021

# P(0.6 < phat < 0.7)
pnorm(0.70, 0.63, sqrt(0.63*0.37/300), lower.tail = T) - pnorm(0.60, 0.63, sqrt(0.63*0.37/300), lower.tail = T) #0.8531 

# Area left = 0.10 
qnorm(0.10, 0.63, sqrt(0.63*0.37/300), lower.tail = T) # phat = 0.5943

# Area right = 0.20 
qnorm(0.20, 0.63, sqrt(0.63*0.37/300), lower.tail = F) # phat = 0.6535

