##     Homework 7

#Install the necessary package for dataset.
install.packages("DAAG")
library(DAAG)
# Create log for “heart” and “weight”
cflog <- log(cfseal[, c("heart", "weight")])
names(cflog) <- c("logheart", "logweight")
View(cflog)
dim(cflog)
colnames(cflog)

# Task 1.b: Below this comment line, you need to make a scatterplot for logheart and logweight
plot(cflog$logweight, cflog$logheart, main = "Heart vs Weight", xlab = "Log Weight", ylab = "Log Heart")
# Task 2.b: Below this comment line, you need to train a lm model.
lm_model <- lm(logheart ~ logweight, data = cflog)
# Below this line, draw a abline for trained model in the plot
abline(lm_model, col = "purple")
# Task 3.b: Below this comment line, draw the summary of the model, You may use a proper function to get this summary 
summary(lm_model)
# What do you find?
# From this summary it prints out the residuals, coefficients, residual standard error, r-squared, and the f-statistic.
