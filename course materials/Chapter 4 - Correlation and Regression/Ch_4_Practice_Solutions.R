# CRICKETS EXAMPLE 

temp <- c(88.6, 71.6, 93.3, 84.3, 80.6, 75.2, 69.7, 82.0, 69.4, 83.3, 79.6, 
          82.6, 80.6, 83.5, 76.3)

chirps <- c(20.0, 16.0, 19.8, 18.4, 17.1, 15.5, 14.7, 17.1, 15.4, 16.2, 15.0, 
            17.2, 16.0, 17.0, 14.4)

# 1. 
x <- temp
y <- chirps

# 2. n = 15 
length(x)
length(y) # or look at environment --> 

# 3. 
plot(x,y,
     main = "Cricket Chirping Based on Temperature (n=15)",
     xlab = "Temperature in Degrees Fahrenheit",
     ylab = "Chirps per Second",
     pch = 8,
     col = "brown")

# 4. linear, positive, medium(?) strength 

# 5. r = 0.835, positive, strong correlation  
cor(x,y)

# 6. 
m <- lm(y~x) # make model 
abline(m) # add to plot 
m$coefficients # find coefficients 
yhat = -0.3091444 + 0.2119250*x # write equation 

# 7. b0 = -0.3091444 chirps per second 
range(x)
# When x = 0, y = -0.3091444, but this has no practical meaning
# because there are NOT BOTH positive and negative values 
# in the x variable. 

# 8. b1 = 0.2119250 chirps per second / degree F 
# As the temperature increases by one degree Fahrenheit, the 
# noise level increases by 0.2119 chirps per second, on average, 
# holding all else constant. 

# 9. r^2 = 0.6974651
(cor(x,y))^2
# 69.7% of the variation in the crickets' noise levels can be 
# explained by the model (by the temperature variable). 
# 30.3% of the variation cannot be explained by the model. 

# 10. 
x = 70
yhat = -0.3091444 + 0.2119250*x
yhat
# For a temperature of 70 dF, we expect 14.52561 chirps per second, 
# on average. 

# 11. 
x = 85
yhat = -0.3091444 + 0.2119250*x
yhat
# For a temperature of 85 dF, we expect 17.70448 chirps per second, 
# on average. 

# 12. 
0.2119250*10
# A temperature increase of 10 dF would yield an increase in noise 
# by 2.11925 chirps per second. 

#-------------------------------------------------------------------------------

# SW Data

install.packages("dplyr")
library(dplyr)
data("starwars")
View(starwars)

# Let's just look at height vs. mass:
sw <- na.omit(starwars[ , 1:3])
View(sw)

# 1. 
plot(sw$height, sw$mass,
     main = "Scatterplot of Star Wars Characters: Mass by Height",
     xlab = "Height (cm)",
     ylab = "Mass (kg)",
     pch = 22, 
     col = "darkblue", 
     bg = "lightblue")

# 2. There is one influential point, an outlier in y. 

max(sw$mass) # Maximum = 1,358 kg 
sw[sw$mass == 1358, ] # It belongs to Jabba Desilijic Tiure; let's remove it. 

sw2 <- sw[!sw$name == "Jabba Desilijic Tiure", ]

# OR...

sw2 <- sw[!sw$mass == 1358, ]

# Now we can work with our new data frame, "sw2".

View(sw2)

plot(sw2$height, sw2$mass,
     main = "Scatterplot of Star Wars Characters: Mass by Height",
     xlab = "Height (cm)",
     ylab = "Mass (kg)",
     pch = 22, 
     col = "darkblue", 
     bg = "lightblue")

# 3. linear, positive, medium(?) strength 

# 4.
cor(sw2$height, sw2$mass) # r = 0.751; positive medium strength 

# 5.
m1 <- lm(sw2$mass ~ sw2$height)
abline(m1)
m1$coefficients

yhat = -31.250 + 0.6127*x 

# 6. slope = 0.6127 kg/cm 
#    As the characters' heights increase by 1 cm, their mass increases
#    on average by 0.6127 kg, holding all else constant. 

# 7. Only use x: [66, 234] in yhat equation 
range(sw2$height)

# 8. 
x = 100
yhat = -31.250 + 0.6127*x
yhat # 30.02 kg 

# 9.
x = 200
yhat = -31.250 + 0.6127*x
yhat # 91.29 kg

# 10. Luke Skywalker (172, 77)
x = 172
yhat = -31.250 + 0.6127*x
yhat # 74.1344
77 - 74.1344 # res = 2.8656

# 11. Boba Fett (183, 78.2)
x = 183
yhat = -31.250 + 0.6127*x
yhat # 80.8741
78.2 - 80.8741 # res = -2.6741

