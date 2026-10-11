### Lab 1 ######################################################################

#1.
# import dataset -- from text (readr) -- browse ... 
View(Fortune_1000_Companies)

#2.
f <- Fortune_1000_Companies

#3.
f[18,4] # 6.50%

#4.
sample <- sample(1:1000, 20, replace = FALSE)
print(sample)

#5. 
f_sample <- f[sample, ]
View(f_sample)

#6.
f_sample[5, ] # answers will vary 

#7. 
a <- f$assets
print(a)

#8. 
class(a)
# quantitative variable, but character type in R. 

#9. 
x = (-b - sqrt((b^2) - 4*a*c)) / 2*a
x = (-b + sqrt((b^2) - 4*a*c)) / 2*a

#10. save 
