### Chapter 6 Methods ##########################################################

# Slide 6 - Gigi's 

X <- c(1, 2, 3, 4, 5, 6)
Probs <- c(0.323, 0.406, 0.112, 0.045, 0.098, 0.016)
sum(Probs)

#1. 0.323 
#2. 
0.406 + 0.112
#3. 
0.112 + 0.045 + 0.098 + 0.016
#4.
0.045 + 0.098 + 0.016
#5. 
1 - 0.016
#6. 
0.323 + 0.406 + 0.112
#7.
0.406 + 0.112 + 0.045
#8. 
0.112 + 0.045 + 0.098

#####################################

# Slide 7 - undergrads 

classes <- c(1, 2, 3, 4, 5, 6)
counts <- c(478, 645, 568, 1864, 1357, 88)
probs = round(counts/5000, 4)


t1 <- data.frame(classes, counts, probs)
View(t1)

barplot(probs, names.arg = classes,
        main = "Discrete Probability Histogram: Number of Classes Taken by Undergrads",
        xlab = "Number of Classes",
        ylab = "Probability")
box()

# Due to the nature of these vectors, we'll use barplot() even though 
# it represents a histogram. 

0.3728 + 0.2714 + 0.0176 

0.0956 + 0.129 + 0.1136

#####################################

# Mean, variance, standard deviation of a DISCRETE RANDOM VARIABLE 

# Classes example: use weighted.mean() to find mean. 

# Slide 8 - mean

x <- c(1, 2, 3, 4, 5, 6)
counts <- c(478, 645, 568, 1864, 1357, 88)
probs = round(counts/5000, 4)

weighted.mean(x, probs)

# Slide 11 - variance 

sum((x^2)*probs) - (weighted.mean(x, probs))^2

# standard deviation 

sqrt(sum((x^2)*probs) - (weighted.mean(x, probs))^2)

#####################################

# Slide 12: Roulette

# 18 red +$1, 18 black -$1, 2 green -$1 

x <- c(1, -1, -1) 
probs <- c(18/38, 18/38, 2/38)
probs <- round(probs, 4)
t1 <- data.frame(x, probs)
View(t1)

barplot(probs, names.arg = x,
        main = "Discrete Probability Histogram: Betting on a Roulette Wheel",
        xlab = "Dollars Won",
        ylab = "Probability",
        ylim = c(0,0.55),
        col = c("darkgreen", "darkred", "darkred"))
box()

weighted.mean(x, probs) # mean 

sum((x^2)*probs) - (weighted.mean(x, probs))^2 # variance

sqrt(sum((x^2)*probs) - (weighted.mean(x, probs))^2) # standard deviation 

#####################################

# Slide 13: Business example 

x <- c(-30, 20, 40)
probs <- c(0.4, 0.5, 0.1)

t1 <- data.frame(x, probs)
View(t1)

barplot(probs, names.arg = x,
        main = "Discrete Probability Histogram: Mining Venture",
        xlab = "Potential Profits (Millions USD)",
        ylab = "Probability",
        ylim = c(0,0.55),
        col = c("darkred", "darkgreen", "darkgreen"))
box()

weighted.mean(x, probs) 

sum((x^2)*probs) - (weighted.mean(x, probs))^2 

sqrt(sum((x^2)*probs) - (weighted.mean(x, probs))^2)  

#####################################

### BINOMIAL DISTRIBUTION 

# P(X=x) = dbinom(x, n, p) 

# Slide 14, 19 - Ice cream example: 

dbinom(3, 10, 0.2) # P(X=3) = 0.2013

# mean = n*p

10*0.2

# variance = n*p*(1-p)

10*0.2*0.8

# standard deviation = sqrt(n*p*(1-p))

sqrt(10*0.2*0.8)

# REMEMBER, you can either put numbers directly into your function, 
# OR define your variables and run the function with letters. 

n = 10
p = 0.2
x = 3

dbinom(x, n, p)

n*p # mean = 2

n*p*(1-p) # variance = 1.6

sqrt(n*p*(1-p)) # S.D. = 1.264911
     
#####################################

# Slide 20 - Video games example 

n = 9
p = 0.5

# P(X=x) = dbinom(x, n, p)
dbinom(x, n, p) # singular values 

# P(X<=x) = pbinom(x, n, p) 
pbinom(x, n, p) # cumulative 

dbinom(4, n, p) # P(X=4)
round(dbinom(4, n, p), 4) # round to 4 places 

round(pbinom(2, n, p), 4) # P(X<3) = P(X<=2)

round(1 - pbinom(3, n, p), 4) # P(X>3) = 1 - P(X<=3)

round(1 - pbinom(6, n, p), 4) # P(X>=7) = 1 - P(X<=6)

pbinom(6, n, p) - pbinom(3, n, p) # P(X<=6) - P(X<=3)

n*p # mean

#####################################

# Slide 25 - website visits 

# dpois(x, lambda)
# ppois(x, lambda)

# 25/min = 12.5/half_minute ... lambda = 12.5

lambda = 12.5 

dpois(15, lambda) # P(X=15)
round(dpois(15, lambda), 4)

round(ppois(10, lambda), 4) # P(X<=10)

round(1 - ppois(20, lambda), 4) # P(X>20) = 1 - P(X<=20)

#####################################

# Slide 26 - water example

# given rate = 4 per microliter 
# interval = 5 microliters 

lambda = 20 

round(dpois(10, lambda), 4) # P(X=10)

round(ppois(29, lambda), 4) # P(X<30)

round(1 - ppois(19, lambda), 4) # P(X>=20) 

4*5 # mean

sqrt(4*5) # standard deviation 




