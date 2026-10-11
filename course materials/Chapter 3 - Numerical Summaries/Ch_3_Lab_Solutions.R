# Chapter 3 Lab

#1. Import Meteorite_Landings 

#2. obs = 45,716; vars = 10
dim(Meteorite_Landings)
# Can look in environment or use dim() function. 

#3. 
mass <- Meteorite_Landings$`mass (g)`

#4. 
mass <- na.omit(mass) # delete missing values 

#5. 45,585 remaining 
45716 - 45585 # 131 deleted 

#6.
mean(mass) # 13,278.08 g 
median(mass)  # 32.6 g 
# extremely positive skewed 

#7.
hist(mass) # too skewed to appear helpful 
boxplot(mass, horizontal = TRUE) # many upper outliers 

#8.
mode <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u)) 
  if((max(tab) > 1) & length(unique(tab)) != 1) {
    print(u[tab==max(tab) & tab>1])
  }
  else {
    print("There is no mode.")
  }
}

mode(mass) # mode = 1.3 
# The most common mass of a meteorite is 1.3 grams. 

#9. 
max(mass) - min(mass) # range = 60,000,000 grams 

#10.
var(mass) # 330612207996 grams^2 
sd(mass) # 574988.9 grams 

#11.
pop.var <- function(x) {sum((x - mean(x))^2)/length(x)}
pop.var(mass) # 330,605,000,000 g^2
pop.sd <- function(x) {sqrt(sum((x - mean(x))^2)/length(x))}
pop.sd(mass)# 574,982.6 g

#12. 
quantile(mass) # <0.0001 - 7.2 - 32.6 - 202.6 - 60,000,000
IQR(mass) # 195.4 g

#13. 
quantile(mass, 0.88) # 805 g 
quantile(mass, 0.13) # 2.9 g 

#14. 
LB = quantile(mass, 0.25) - 1.5*IQR(mass) # -286
UB = quantile(mass, 0.75) + 1.5*IQR(mass) # 496

print(mass[mass < LB]) # none 
print(mass[mass > UB]) # too many to print them all 

length(mass[mass > UB]) # but we know that there are 7,086 upper outliers 

#15. 
mass2 <- mass[mass<UB] # 38,499 observations 

#16. 
hist(mass2,
     main = "Distribution of Meteorite Mass",
     xlab = "Mass (g)",
     ylab = "Frequency",
     col = "green")

boxplot(mass2, 
        horizontal = TRUE,
        main = "Distribution of Meteorite Mass",
        xlab = "Mass (g)",
        col = "green")

#17. unimodal, extreme positive skew 

# BONUS: 
Meteorite_Landings2 <- Meteorite_Landings[Meteorite_Landings$`mass (g)`<UB, ]

boxplot(Meteorite_Landings2$`mass (g)` ~ Meteorite_Landings2$fall,
        horizontal = TRUE,
        main = "Distribution of Mass by Fell vs. Found",
        xlab = "Mass (g)",
        ylab = "Category",
        col = c("green", "darkgreen"))
 