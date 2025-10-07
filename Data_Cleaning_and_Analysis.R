# command to check for working directory
getwd()

# command to change working directory
setwd("C:/Users/User/Desktop/AMR R Training")

# Basic operations in R
7+9 #addition
7-9 #subtraction
7*2 #Multiplication
7^2 #exponential
7>8 #greater than
7<8 #less than
7==7
7==9
7!=9
7!=7

#Data types
# 1.string/character/text data 2. Numeric data
# 3. Factor/categorical/ 4. Logical


#1. String data
names <- "Tom Mike"
Message <-"Hello R Programming"
  
print(names) #print displayed output of the object that was created 
print(message)  

toupper(names)
tolower(names) 


#2. Factor/categorical data
gender <- factor(c("Male", "Female", "Male", "Female"))
summary(gender)


#3. Numerical data
Income_2024 <- c(10000,23000,42000)
Income_2025 <- c(35000,41000,53000)

Income_2024
Income_2025

Income_2024+Income_2025
max(Income_2024)
min(Income_2025)

#4.Logical data
Fruits <- "Apple" !="banana"
Fruits

Animal <- "lion" != "lion"
Animal

#otherlogical operations
# a&b AND operation
# a|b


#Data structure

#1. Vector 2. List 3. Dataframe

#1. Vector: a data that allow you to store just one 
# data type at a time 
Participant <- c("Samuel","Shity","Edwin", "Yusuf")
Height <- c(4.75, 3,39, 5.24, 3,31)


#2. List: a data structure that allow you to store more than one data
#type
Sale_Data_1 <- list(Item=c("TV","Laptop", "Automobile"),
                  Quantity=c(20, 33, 19),
                  Country=c("Nigeria", "Senegal","Ghana"))


#3. Data frame: a data structure that allow you to store data in a
#tabular format (that, as, rows and columns)
Sale_Data_2 <- data.frame(Item=c("TV", "Laptop", "Automobile"),
                    Quantity=c(20, 33, 19),
                    Country=c("Nigeria", "Senegal","Ghana"))
 

 
# Installation of packages
install.packages("tidyverse")
install.packages("dplyr")
install.packages("ggplot2")




# Loading of packages/libraries
library(tidyverse)
library(dplyr)
library(ggplot2)


# Importing data
Covid_Data <-read_csv("Covid Data.csv")

#Select and rename variable of interest
# To check for variables or column names
colnames(Covid_Data)

# "What is your total family size?"
# "How old are you?"
# "What is your montly income?"
# "What is your Marital status?"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
# "What is the gender of the respondent?"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
# "What is your religion?"  
# "What is your Educational status?"

# Select and rename variables
New_Covid_Data <- select(Covid_Data, 
                         "Family_size"= "What is your total family size?",
                         "Age"= "How old are you?",
                         "Monthly_Income"="What is your montly income?",
                         "Marital_Status"= "What is your Marital status?",
                         "Gender"= "What is the gender of the respondent?",
                         "Religion"= "What is your religion?",
                         "Educational_Status" ="What is your Educational status?")
colnames(New_Covid_Data)





# Quick overview or analysis of the data
table(New_Covid_Data$Marital_Status)
table(New_Covid_Data$Gender)
table(New_Covid_Data$Religion)
table(New_Covid_Data$Educational_Status)




# Data transformation/cleaning/wrangling
# Standardizing gender column
table(New_Covid_Data$Gender)

New_Covid_Data$Gender <-  ifelse(tolower(New_Covid_Data$Gender)=="male", "Male",
                                 ifelse(tolower(New_Covid_Data$Gender)=="female", "Female",
                                        New_Covid_Data$Gender))
table(New_Covid_Data$Gender)

#Approach 1

New_Covid_Data$Religion <- ifelse(tolower(New_Covid_Data$Religion) %in% c("catholic",
                                                                          "Catholic",
                                                                          "pentecostal",
                                                                          "protestant"), "Christianity",
                                  ifelse(tolower(New_Covid_Data$Religion) %in% c("muslim",
                                                                                 "Muslim"), "Isam",
                                         ifelse(tolower(New_Covid_Data$Religion) %in% c("traditional",
                                                                                        "Traditional"),"Traditional",
                                                New_Covid_Data$Religion)))
table(New_Covid_Data$Religion)

                                            

# Convert Educational_Status to lowercase for consistency
New_Covid_Data$Educational_Status <- tolower(New_Covid_Data$Educational_Status)

# Standardize the Educational_Status values
New_Covid_Data$Educational_Status <- ifelse(New_Covid_Data$Educational_Status %in% c("no education", "noeducation"),
                                            "No Education",
                                            ifelse(New_Covid_Data$Educational_Status %in% c("primary"),
                                                   "Primary",
                                                   ifelse(New_Covid_Data$Educational_Status %in% c("secondary", "seconadary"),
                                                          "Secondary",
                                                          ifelse(New_Covid_Data$Educational_Status %in% c("tertiary", "tertiery"),
                                                                 "Tertiary",
                                                                 "Other"))))  # Optional: categorize everything else as "Other"

# View cleaned categories
table(New_Covid_Data$Educational_Status)



# Checking the data type for the selected variables
mode(New_Covid_Data$Family_size)
mode(New_Covid_Data$Age)
mode(New_Covid_Data$Monthly_Income)

mode(New_Covid_Data$Marital_Status)
mode(New_Covid_Data$Gender)
mode(New_Covid_Data$Religion)
mode(New_Covid_Data$Educational_Status)


# Converting strings/character variables into appropriate data type
New_Covid_Data$Marital_Status <- as.factor(New_Covid_Data$Marital_Status)
New_Covid_Data$Gender <- as.factor(New_Covid_Data$Gender)
New_Covid_Data$Religion <- as.factor(New_Covid_Data$Religion)
New_Covid_Data$Educational_Status <- as.factor(New_Covid_Data$Educational_Status)



New_Covid_Data$Family_size <- as.numeric(New_Covid_Data$Family_size)
New_Covid_Data$Age <- as.numeric(New_Covid_Data$Age)
New_Covid_Data$Monthly_Income <- as.numeric(New_Covid_Data$Monthly_Income)


# Re-checking for the data types
class(New_Covid_Data$Marital_Status)
class(New_Covid_Data$Religion)
class(New_Covid_Data$Gender)
class(New_Covid_Data$Educational_Status)


class(New_Covid_Data$Family_size)
class(New_Covid_Data$Age)
class(New_Covid_Data$Monthly_Income)


# Other data pre-processing with dplyr- filter, groupby, summarize, mutate

#Filter: this is used to filter or sort the data based on certain criteria
#Perform an analysis that will show the mean age of male and female participants
mean(New_Covid_Data$Age) #this will show  mean of both male and female


# To get the mean of male participants
Male_Filter <- filter(New_Covid_Data,
                      New_Covid_Data$Gender== "Male")

mean(Male_Filter$Age)


# To get the mean age of female participant
Female_Filter <- filter(New_Covid_Data,
                        New_Covid_Data$Gender== "Female")

mean(Female_Filter$Age)


#To obtain the mean age by gender of participants- groupby and summarize
Analysis <- group_by(New_Covid_Data, Gender)
summarise(Analysis, mean(Analysis$Age))

New_Covid_Data %>%
   group_by(Gender) %>%
   summarise(mean_age = mean(Age, na.rm = TRUE))

# Mutate: This is to create new column in a data set
# Create a column where the income is an increment of $10000
New_Covid_Data <- New_Covid_Data %>%
  mutate(projected_Monthly_Income + 10000)




