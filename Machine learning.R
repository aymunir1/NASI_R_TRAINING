
# loading packages/libraries
library(tidyverse)
library(dplyr)
library(ggplot2)


# Importing data
Student_Data <- read.csv("Students_Grading_Dataset.csv") 

# Checking for column names
colnames(Student_Data)


### Machine learning algorithism

#step 1: installing and loading for machine learming algorithism
install.packages("caret")     # binary logistic algorithism
install.packages("e1071")     # native bayes algorithism

library(caret)
library(e1071)


# Set seed for replication of results
set.seed(123)
colnames(Student_Data)

#Step 3: Convert target variable to factor
mode(Student_Data$Extracurricular_Activities)
Student_Data$Extracurricular_Activities <- as.factor(Student_Data$Extracurricular_Activities)


# Step 4: Select independent and target variable to factor
ml_data <- Student_Data %>%
  select("Study_Hours_per_Week", "Sleep_Hours_per_Night",
         "Total_Score", "Extracurricular_Activities") %>%
  na.omit()

# Step 5: Split data into train and test data
trainIndex <- createDataPartition(ml_data$Extracurricular_Activities,
                                  p=0.7, list = FALSE)


trainData <- ml_data[trainIndex,]
testData <- ml_data[-trainIndex,]

# Step 6: Running achine learning algorithms

# Step 7: Logistic regression algorithm

# Check column names
colnames(ml_data)

# Make sure the outcome variable is a factor with correct levels
ml_data$Extracurricular_Activities <- factor(
  ml_data$Extracurricular_Activities,
  levels = c("Yes", "No")
)

# Train logistic model
log_model <- glm(
  Extracurricular_Activities ~ ., 
  data = trainData,
  family = "binomial"
)

# Predict probabilities on test data
log_pred <- predict(log_model, testData, type = "response")

# Convert probabilities to classes using 0.5 threshold
log_class <- ifelse(log_pred > 0.5, "Yes", "No")
log_class <- factor(log_class, levels = c("Yes", "No"))

# Also factor the test dataset outcome to match levels
testData$Extracurricular_Activities <- factor(
  testData$Extracurricular_Activities,
  levels = c("Yes", "No")
)

# Confusion matrix
confusionMatrix(log_class, testData$Extracurricular_Activities)


# Step 8: Naive Bayes Algorithm

# Make sure e1071 is loaded
library(e1071)

# Fit Naive Bayes model
nb_model <- naiveBayes(Extracurricular_Activities ~ ., 
                       data = trainData)

# Predict on test data
nb_pred <- predict(nb_model, testData)

# Ensure predicted classes are factors with the same levels as the reference
nb_pred <- factor(nb_pred, levels = levels(testData$Extracurricular_Activities))

# Evaluate performance
confusionMatrix(nb_pred, testData$Extracurricular_Activities)


#other algorithms
# SVM, Gradient boosting, Decision tree, Random forest classifier, K-NN
















