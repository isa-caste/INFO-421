#install needed packages
install.packages("rpart.plot")
library(rpart)
install.packages("party")
library(party)

#load in the data
tech_data <- read.csv("C:\\Users\\icwin\\OneDrive - Indiana University\\[I-421] Data Mining\\Final Project\\techsurvey.csv")
View(tech_data)

# delete unnecessary attributes & missing data
new_data <- tech_data[, -c(1, 2, 3, 4, 5, 6, 10, 11, 12, 20, 24, 27)]
new_tech_data <- na.omit(new_data)
View(new_tech_data)
plot(new_tech_data$work_interfere)
# perform preliminary analysis
View(new_tech_data)
str(new_tech_data)
dim(new_tech_data)
summary(new_tech_data)
# see number of options for each attribute
table(new_tech_data$work_interfere)
table(new_tech_data$family_history)
table(new_tech_data$treatment)
table(new_tech_data$benefits)
table(new_tech_data$care_options)
table(new_tech_data$wellness_program)
table(new_tech_data$seek_help)
table(new_tech_data$anonymity)
table(new_tech_data$leave)
table(new_tech_data$mental_health_consequence)
table(new_tech_data$coworkers)
table(new_tech_data$supervisor)
table(new_tech_data$mental_health_interview)
table(new_tech_data$mental_vs_physical)
table(new_tech_data$obs_consequence)

###       TREE 1
# Split the dataset into training and testing sets
set.seed(14444)
ind <- sample(2, nrow(data), replace=TRUE, prob=c(1.0, 0.99))
data.train <- data[ind==1,]
data.test <- data[ind==2,]
# Define the formula for the decision tree
myFormula <- work_interfere ~ family_history + treatment + 
    remote_work + mental_vs_physical + obs_consequence + care_options
data_rpart <- rpart(myFormula, data = data.train, control = rpart.control(minsplit = 10))
# check the attributes of the trained decision tree
attributes(data_rpart)
# check the summary of the decision tree
summary(data_rpart)
print(data_rpart)
# check the complexity parameter
print(data_rpart$cptable)
# plot the decision tree before prune
plot(data_rpart)
text(data_rpart, use.n=T, cex=.7)
#better visualization of tree structure using rpart.plot package
rpart.plot::rpart.plot(data_rpart)


###       TREE 2      ##### ONLY USES 2
# Split the dataset into training and testing sets
set.seed(1444444)
ind <- sample(2, nrow(data), replace=TRUE, prob=c(1.0, 0.99))
data.train <- data[ind==1,]
data.test <- data[ind==2,]
# Define the formula for the decision tree
myFormula <- work_interfere ~ family_history + obs_consequence + care_options + mental_health_consequence
data_rpart <- rpart(myFormula, data = data.train, control = rpart.control(minsplit = 10))
# check the attributes of the trained decision tree
attributes(data_rpart)
# check the summary of the decision tree
summary(data_rpart)
print(data_rpart)
# check the complexity parameter
print(data_rpart$cptable)
# plot the decision tree before prune
plot(data_rpart)
text(data_rpart, use.n=T, cex=.7)
#better visualization of tree structure using rpart.plot package
rpart.plot::rpart.plot(data_rpart)

###       TREE 3
# Split the dataset into training and testing sets
set.seed(1444444)
ind <- sample(2, nrow(data), replace=TRUE, prob=c(1.0, 0.99))
data.train <- data[ind==1,]
data.test <- data[ind==2,]
# Define the formula for the decision tree
myFormula <- work_interfere ~ obs_consequence + mental_health_consequence + leave + wellness_program + family_history + seek_help
data_rpart <- rpart(myFormula, data = data.train, control = rpart.control(minsplit = 10))
# check the attributes of the trained decision tree
attributes(data_rpart)
# check the summary of the decision tree
summary(data_rpart)
print(data_rpart)
# check the complexity parameter
print(data_rpart$cptable)
# plot the decision tree before prune
plot(data_rpart)
text(data_rpart, use.n=T, cex=.7)
#better visualization of tree structure using rpart.plot package
rpart.plot::rpart.plot(data_rpart)

###       TREE 4
# Split the dataset into training and testing sets
set.seed(14444)
ind <- sample(2, nrow(data), replace=TRUE, prob=c(1.0, 0.99))
data.train <- data[ind==1,]
data.test <- data[ind==2,]
# Define the formula for the decision tree
myFormula <- work_interfere ~ obs_consequence + mental_health_consequence + 
    leave + wellness_program + family_history + seek_help
data_rpart <- rpart(myFormula, data = data.train, control = rpart.control(minsplit = 10))
# check the attributes of the trained decision tree
attributes(data_rpart)
# check the summary of the decision tree
summary(data_rpart)
print(data_rpart)
# check the complexity parameter
print(data_rpart$cptable)
# plot the decision tree before prune
plot(data_rpart)
text(data_rpart, use.n=T, cex=.7)
#better visualization of tree structure using rpart.plot package
rpart.plot::rpart.plot(data_rpart)

###      TREE 5
# Split the dataset into training and testing sets
set.seed(144444)
ind <- sample(2, nrow(data), replace=TRUE, prob=c(1.0, 0.99))
data.train <- data[ind==1,]
data.test <- data[ind==2,]
# Define the formula for the decision tree
myFormula <- work_interfere ~ benefits + seek_help + leave + anonymity + supervisor + mental_vs_physical + family_history
data_rpart <- rpart(myFormula, data = data.train, control = rpart.control(minsplit = 10))
# check the attributes of the trained decision tree
attributes(data_rpart)
# check the summary of the decision tree
summary(data_rpart)
print(data_rpart)
# check the complexity parameter
print(data_rpart$cptable)
# plot the decision tree before prune
plot(data_rpart)
text(data_rpart, use.n=T, cex=.7)
#better visualization of tree structure using rpart.plot package
rpart.plot::rpart.plot(data_rpart)

###      TREE 6      ##### ONLY USES 2
# Split the dataset into training and testing sets
set.seed(144)
ind <- sample(2, nrow(data), replace=TRUE, prob=c(1.0, 0.99))
data.train <- data[ind==1,]
data.test <- data[ind==2,]
# Define the formula for the decision tree
myFormula <- work_interfere ~ seek_help + leave + anonymity + supervisor + mental_vs_physical + family_history
data_rpart <- rpart(myFormula, data = data.train, control = rpart.control(minsplit = 10))
# check the attributes of the trained decision tree
attributes(data_rpart)
# check the summary of the decision tree
summary(data_rpart)
print(data_rpart)
# check the complexity parameter
print(data_rpart$cptable)
# plot the decision tree before prune
plot(data_rpart)
text(data_rpart, use.n=T, cex=.7)
#better visualization of tree structure using rpart.plot package
rpart.plot::rpart.plot(data_rpart)

###      TREE 6.1
# Split the dataset into training and testing sets
set.seed(1334)
ind <- sample(2, nrow(data), replace=TRUE, prob=c(1.0, 0.99))
data.train <- data[ind==1,]
data.test <- data[ind==2,]
# Define the formula for the decision tree
myFormula <- work_interfere ~ seek_help + leave + anonymity + 
    supervisor + mental_vs_physical + family_history
data_rpart <- rpart(myFormula, data = data.train, control = rpart.control(minsplit = 10))
# check the attributes of the trained decision tree
attributes(data_rpart)
# check the summary of the decision tree
summary(data_rpart)
print(data_rpart)
# check the complexity parameter
print(data_rpart$cptable)
# plot the decision tree before prune
plot(data_rpart)
text(data_rpart, use.n=T, cex=.7)
#better visualization of tree structure using rpart.plot package
rpart.plot::rpart.plot(data_rpart)


###      TREE 6.2    ##### ONLY USES 2
# Split the dataset into training and testing sets
set.seed(144444)
ind <- sample(2, nrow(data), replace=TRUE, prob=c(1.0, 0.99))
data.train <- data[ind==1,]
data.test <- data[ind==2,]
# Define the formula for the decision tree
myFormula <- work_interfere ~ seek_help + leave + anonymity + supervisor + mental_vs_physical + family_history
data_rpart <- rpart(myFormula, data = data.train, control = rpart.control(minsplit = 10))
# check the attributes of the trained decision tree
attributes(data_rpart)
# check the summary of the decision tree
summary(data_rpart)
print(data_rpart)
# check the complexity parameter
print(data_rpart$cptable)
# plot the decision tree before prune
plot(data_rpart)
text(data_rpart, use.n=T, cex=.7)
#better visualization of tree structure using rpart.plot package
rpart.plot::rpart.plot(data_rpart)


###      TREE 7
# Split the dataset into training and testing sets
set.seed(14444)
ind <- sample(2, nrow(data), replace=TRUE, prob=c(1.0, 0.99))
data.train <- data[ind==1,]
data.test <- data[ind==2,]
# Define the formula for the decision tree
myFormula <- work_interfere ~ family_history + treatment + benefits + care_options + wellness_program + seek_help + anonymity + leave + mental_health_consequence + coworkers + supervisor + mental_health_interview + mental_vs_physical + obs_consequence
data_rpart <- rpart(myFormula, data = data.train, control = rpart.control(minsplit = 10))
# check the attributes of the trained decision tree
attributes(data_rpart)
# check the summary of the decision tree
summary(data_rpart)
print(data_rpart)
# check the complexity parameter
print(data_rpart$cptable)
# plot the decision tree before prune
plot(data_rpart)
text(data_rpart, use.n=T, cex=.7)
#better visualization of tree structure using rpart.plot package
rpart.plot::rpart.plot(data_rpart)

###      TREE 7.2
# skip setting seed
ind <- sample(2, nrow(data), replace=TRUE, prob=c(1.0, 0.99))
data.train <- data[ind==1,]
data.test <- data[ind==2,]
# Define the formula for the decision tree
myFormula <- work_interfere ~ family_history + treatment + benefits + care_options + wellness_program + seek_help + anonymity + leave + mental_health_consequence + coworkers + supervisor + mental_health_interview + mental_vs_physical + obs_consequence
data_rpart <- rpart(myFormula, data = data.train, control = rpart.control(minsplit = 10))
# check the attributes of the trained decision tree
attributes(data_rpart)
# check the summary of the decision tree
summary(data_rpart)
print(data_rpart)
# check the complexity parameter
print(data_rpart$cptable)
# plot the decision tree before prune
plot(data_rpart)
text(data_rpart, use.n=T, cex=.7)
#better visualization of tree structure using rpart.plot package
rpart.plot::rpart.plot(data_rpart)




