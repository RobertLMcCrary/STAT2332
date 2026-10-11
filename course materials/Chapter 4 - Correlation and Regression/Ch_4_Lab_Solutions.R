# Chapter 4 Lab - Diamond_Prices 

#1. Import 
library(readr)
Diamonds_Prices <- read_csv("C:/Users/meldrid8/OneDrive - Kennesaw State University/STAT 2332 Material/More Misc. Data/Diamonds_Prices.csv")
View(Diamonds_Prices)

#2. x = carat; y = price 

#3. 
plot(Diamonds_Prices$carat, Diamonds_Prices$price,
     main = "Scatterplot of Diamond Price by Carat (n=54,000)",
     xlab = "Carat (Weight)",
     ylab = "Price",
     bg = "lightblue", 
     col = "black", 
     pch = 23)

#4. positive correlation, moderate (?) strength 

#5. 
cor(Diamonds_Prices$carat, Diamonds_Prices$price) # r = 0.922 strong! 

#6. 
model <- lm(Diamonds_Prices$price ~ Diamonds_Prices$carat)
abline(model)

#7. 
summary(model)
model$coefficients
# yhat = -2256.396 + 7756.436*x

#8. slope = 7756.436 USD/carat 
# As the weight of the diamond increases by one carat, the price increases
# by $7,756.44, on average, holding all else constant. 

#9. if x = 0, y = -2256.396. No real life interpretation in this case. 

#10. 
x = 1
yhat = -2256.396 + 7756.436*x
yhat
# For a 1 carat diamond, the price is predicted to be $5,500.04 on average. 

#11. 
x = 4.5
yhat = -2256.396 + 7756.436*x
yhat
# For a 4.5 carat diamond, the price is predicted to be $32,647.57 on average.

#12.
# If change in x = 2, then change in y = 2*7756.436 = 15,512.87
2*7756.436
# As the diamond increases in weight by 2 carat, the price would increase
# by $15,512.87 on average. 

#13. 
Diamonds_Prices[951,] # (carat, USD) = (0.5, 2889)
x = 0.5
yhat = -2256.396 + 7756.436*x
yhat # 1621.822
2889 - 1621.822 # residual = $1,267.178

model$residuals[951] # same answer 

#14. 
range(Diamonds_Prices$carat) # [0.20, 5.01]
# We can use any x value in our prediction model between 0.2 and 5.0. 
# We will avoid using x<0.2 or x>5.0 since this would be extrapolation. 

#15.
boxplot(Diamonds_Prices$price ~ Diamonds_Prices$color,
        horizontal = TRUE,
        main = "Comparing Price by Color Category (n=54,000)",
        xlab = "Price (USD)",
        ylab = "Color Code",
        col = "skyblue")
