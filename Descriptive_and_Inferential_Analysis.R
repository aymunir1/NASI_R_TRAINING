


# Loading of packages/libraries
library(tidyverse)
library(dplyr)
library(ggplot2)


# Importing data
Students_Data <-read_csv("Students_Grading_Dataset.csv")


colnames(Students_Data)


# Descriptive Analysis

# 1. Measures of count
# MOstly used for categorical variables
table(Student_Data$Gender)
table(Student_Data$Department)


# Cross-tabulation:coparing two categorical variables
table(Student_Data$Gender, Student_Data$Department)
table(Student_Data$Department, Student_Data$Gender)


# 2. Measure of central tendency/average
# Mostly used for numerical variables
# Mean, Mode, Mediam
mean(Student_Data$Final_Score)

# to get the mean total score of male and female student
Student_Data %>%
  group_by(Gender) %>%
  summarise(mean_total_score = mean(Total_Score, na.rm = TRUE))

median(Student_Data$Final_Score)
Student_Data %>%
  group_by(Gender) %>%
  summarise(median_final_score = median(Final_Score, na.rm = TRUE))


mode(Student_Data$Final_Score)
table(Student_Data$Final_Score) %>%
  view




table()

# 3. Measure of dispersion: Mostly use for numerical variables

sd(Student_Data$Final_Score)
var(Student_Data$Final_Score)

range(Student_Data$Final_Score)
diff(range(Student_Data$Final_Score))





#Select and rename variable of interest
# To check for variables or column names
colnames(Students_Data)





## Inferential Analysis 
# 1. Chi-square: to test for association between 2 categorical variables
# H0: there is no association between gender and department
# H1 there is association between gender and department
# Decision criteria: Accept H0 if p-value > 0.05
#                    Reject H0 if p-value < 0.05
#Conclusion: Since the p-value 0.7856 is greater than 0.05: therefore 
# we accept the null hypothesis




# To check for variables or column names
colnames(Students_Data)              




Chisquare_Table <- table(Students_Data$Gender, Students_Data$Department)
chisq.test(Chisquare_Table, correct = TRUE)



#2. Correlation: to test for association between 2 numeric variables
#H0: there is no association between study hours per week and total score
#H1 there is association between study hours per week and total score
#Decision criteria:Accept H0 if p-value > 0.05
#                 Reject H0 if p-value < 0.05
# Conclusion: Since the p-value 0.3676 is greater than 0.05: 
# therefore we accept the null hypothesis
#and conclude that their is no relationship between study hours per week 
#and total score
# in addition, the correlation coefficient of -0.01274355 signifies that there is 
# a weak correlation between study hours per week and total score

Correlation <- cor(Students_Data$Study_Hours_per_Week, Students_Data$Total_Score,
                        method = "pearson", use = "complete.obs")
Correlation

Correlation1 <- cor.test(Students_Data$Study_Hours_per_Week, Students_Data$Total_Score,
                    method = "pearson", use = "complete.obs")
Correlation1








#3. T-test: used to test for difference in mean; where you have a numeric variable
# and a categorical variable that has just 2 groups/levels
# H0: there is no significant difference in the average final score of male and 
# female student
# H0: there is no significant difference in the average final score of male and 
# female student
#Decision criteria: Accept H0 if p-value > 0.05
#                   Reject H0 if p-value < 0.05
#Conclusion: Since the p-value = 0.8114 is greater than 0.05: therefore 
# we accept the null hypothesis
# and conclude that their is no significant difference in the average 
# final score of male and female student

t.test(Students_Data$Final_Score~Students_Data$Gender, alt="two.sided")



#4. ANOVA: used to test for difference in mean; where you have a numeric variable 
# and categorical variable that has more than group/level
# H0: there is no significant difference in the average final score of student 
# across 4 departments
# H1: there is significant difference in the average final score of student 
# across 4 departments
#Decision criteria: Accept H0 if p-value > 0.05
#                   Reject H0 if p-value < 0.05
#Conclusion: Since the p-value = 0.115 is greater than 0.05:
#therefore we accept the null hypothesis
# and conclude that their is no significant difference in the 
#average final score of final score of student across 4 departments


ANOVA <- aov(Students_Data$Final_Score~Students_Data$Department)
summary(ANOVA)




#R Regressional Analysis

#1. simple linear regression
#Independent variable       IV=Age
#Dependent variable         DV=Final score

#H0 Age does not have significant impact on final score of students.
#H1 Age does has significant impact on final score of students.

#Decision criteria: Accept H0 if p-value > 0.05
#                   Reject H0 if p-value > 0.05


SLR <- lm(Students_Data$Final_Score ~ Students_Data$Age)
summary(SLR)
# y= a+bx
# y is dependent variable; x is the independent variable
# a is the intercept; b= gradient/slope/rate of change

# a= 72.5913; b= -0.1402


#CONCLUSION: Since p-value: 0.2527 > 0.05, therefore Age does not have 
#significant impact on final score of students.
# In addition the slope of -0.1402 signifies that for every unit change in the age
# of participant, the final score is reducing by 14.02%
# so also the R-square value of 0.0002618 (0.03%) means that age only has 0.03%
# influence or impact on final score and the remaining 99.97% cannot be accounted
# for by the model.




#2. Multiple linear regression  
#Independent variable   IV1 = Age,  IV2 = Study hours per week, IV3 = Participant score 
#Dependent variable         DV = Final score

#H0 The IVs does not have significant impact on final score of students.
#H1 The IVs does has significant impact on final score of students.

#Decision criteria: Accept H0 if p-value > 0.05
#                   Reject H0 if p-value > 0.05


MLR <- lm(Students_Data$Final_Score ~ Students_Data$Age +
          Students_Data$Study_Hours_per_Week + Students_Data$Participation_Score)
summary(MLR)
# y= a+b1x1 + b2x2 + b3x3 
# y is dependent variable; x is the independent variable
# a is the intercept; b= gradient/slope/rate of change

# a= 72.5913; b= -0.1402


#CONCLUSION: Since p-value: 0.2527 > 0.05, therefore Age does not have 
#significant impact on final score of students.
# In addition the slope of -0.1402 signifies that for every unit change in the age
# of participant, the final score is reducing by 14.02%
# so also the R-square value of 0.0002618 (0.03%) means that age only has 0.03%
# influence or impact on final score and the remaining 99.97% cannot be accounted
# for by the model.




## GRAPHICAL DATA ANALYSIS

#1. Bar chart of average final score of participant by department
colnames(Students_Data)

Students_Data %>%
  group_by(Department) %>%
  summarise(Avg_Final_Score=mean(Final_Score, na.rm=TRUE)) %>%
  mutate(Percentage=Avg_Final_Score/sum(Avg_Final_Score)*100) %>%
  ggplot(aes(x=Department, y=Percentage, fill=Department)) + 
  geom_bar(stat = "identity") +
  geom_text(aes(label=paste0(round(Percentage, 1), "%")),
            vjust=-0.5, size=4) +
  labs(title = "Percentage of Average Scores by Department of Participant",
       y="Percentage",
       x="Department") +
  theme_minimal()



# 2. Scatter plot of study hours vs Toal Score colored by Grade of Participants
ggplot(Students_Data, aes(x=Study_Hours_per_Week,
                          y=Total_Score,
                          color=Grade)) +
  geom_point(size=3, alpha=0.7) +
  geom_smooth(method = "lm", se=FALSE, color="black",
              linetype="dashed") +
  labs(title = "Study hours vs Total score",
       x= "Study hours per week",
       y= "Total score") +
  theme_minimal()
       



# 3. Histogram of sleep hours per night
ggplot(Students_Data, aes(x=Sleep_Hours_per_Night)) +
  geom_histogram(binwidth = 0.5, fill="skyblue", colore="black") +
  labs(title = "Distribution of sleep hours",
       x="sleep hours per night") + 
  theme_minimal()


# 4. Box plot of final score by gender
ggplot(Students_Data, aes(x=Gender, y= Final_Score, fill = Gender)) +
  geom_boxplot() +
  labs(title = "Distribution of final score by gender",
       y= "Final score") +
  theme_minimal()






