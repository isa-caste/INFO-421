# Question 1
# a.)
college <- read.csv("C://Users//icwin//OneDrive - Indiana University//[I-421] Data Mining//College.csv")
# b.)
num_rows <- nrow(college)
num_rows
# c.)
fix(college)
View(college)
# d.)
rownames(college) <- college[, 1]  	
View(college)
#What do you find after these 2 lines of codes? (2 points) 
# This code sets the row name of the data frame to the values in the 1st column.
# e.)
college <- college[, -1]
View(college)
#What do you find after these 2 lines of codes?  (2 points)  
# This code removes the 1st column from the data frame.
# f.)
summary(college)
# g.)
Elite <- rep ("No",nrow(college ))  
Elite [college$Top10perc >50] = 'Yes'  	
Elite <- as.factor(Elite)  	
college <- data.frame(college ,Elite)
summary(Elite)
# h.)
hist(college$Top10perc,
main = "Top 10 Percent")
hist(college$Top25perc, 
main = "Top 25 Percent")
hist(college$F.Undergrad, 
main = "Undergraduate")
hist(college$Outstate, 
main = "Out of State")

# Question 2
# a.)
auto_num <- read.csv("C://Users//icwin//OneDrive - Indiana University//[I-421] Data Mining//Auto.csv")
View(auto_num)
# b.)
numrows <- nrow(auto_num)
numrows
# c.)
auto = read.csv("C://Users//icwin//OneDrive - Indiana University//[I-421] Data Mining//Auto.csv", header = TRUE, na.string = c("?", "NA"))   
View(auto)
# d.)
range(auto$mpg)
range(auto$cylinders)
range(auto$displacement)
range(auto$horsepower, na.rm = TRUE)
range(auto$weight)
range(auto$acceleration)
range(auto$year)
range(auto$origin)
# e.)
mean(auto$mpg)
mean(auto$cylinders)
mean(auto$displacement)
mean(auto$horsepower, na.rm = TRUE)
mean(auto$weight)
mean(auto$acceleration)
mean(auto$year)
mean(auto$origin)
stddev(auto$mpg)
stddev(auto$cylinders)
stddev(auto$displacement)
stddev(auto$horsepower, na.rm = TRUE)
stddev(auto$weight)
stddev(auto$acceleration)
stddev(auto$year)
stddev(auto$origin)
# f.)
auto_ <- auto[-(10:85)]
range(auto_$mpg)
range(auto_$cylinders)
range(auto_$displacement)
range(auto_$horsepower, na.rm = TRUE)
range(auto_$weight)
range(auto_$acceleration)
range(auto_$year)
range(auto_$origin)
mean(auto_$mpg)
mean(auto_$cylinders)
mean(auto_$displacement)
mean(auto_$horsepower, na.rm = TRUE)
mean(auto_$weight)
mean(auto_$acceleration)
mean(auto_$year)
mean(auto_$origin)
sd(auto_$mpg)
sd(auto_$cylinders)
sd(auto_$displacement)
sd(auto_$horsepower, na.rm = TRUE)
sd(auto_$weight)
sd(auto_$acceleration)
sd(auto_$year)
sd(auto_$origin)

# Question 3
`%my_num%` <- function(a, b) {
  return(paste(a, b))
}
result <- "Hola" %my_num% "Que Tal"
print(result)

