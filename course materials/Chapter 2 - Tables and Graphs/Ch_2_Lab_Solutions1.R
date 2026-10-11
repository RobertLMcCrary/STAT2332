### LAB 2 SOLUTIONS ############################################################

#1. import - from text (readr)
View(Road_Accidents) 

#2.
r <- Road_Accidents

#3. 
dim(r)
# OR
nrow(r)
ncol(r)
# 307,973 rows/observations and 21 columns/variables. 

#4.
table(r$Day_of_Week)

# This variable is ordinal. Here is how to reorder the values: 
wd <- ordered(r$Day_of_Week, 
              c("Monday","Tuesday","Wednesday",
                "Thursday","Friday","Saturday",
                "Sunday")) 
t1 <- table(wd)

View(t1)

#5. 
barplot(t1,
        main = "Frequency of Road Accidents by Day (n=308,000)",
        xlab = "Day of the Week",
        ylab = "Frequency", 
        col = "darkgreen",
        ylim = c(0,60000))
abline(h=0)

#6. 
t2 <- 100*table(r$Urban_or_Rural_Area)/nrow(r)
t2

#7. 
pie(t2,
    main = "Percentage of Accidents by Location Type (n=308,000)",
    col = c("seagreen", "skyblue"),
    labels = c("35.5%", "64.5%"))

legend("bottomright", 
       c("Rural", "Urban"), 
       cex = 0.8,
       fill = c("seagreen", "skyblue"))

#8. 
c <- r$Number_of_Casualties
length(c[c > 5])
# 1,210 

#9. 
c2 <- c[c < 6]
length(c2)
# 306,763 observations 

#10. 
hist(c2,
     main = "Frequency of the Number of Casualties",
     xlab = "Number of Casualites",
     col = "darkgray",
     ylim = c(0,270000))
