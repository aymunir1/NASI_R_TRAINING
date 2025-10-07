
## Overview  
This repository contains datasets, and R scripts developed as a result of the knowledge and practical skills I gained from the **NextGen Antimicrobial Stewardship Initiative Training**. 


## A DATA ANALYSIS 

### 1. [Data_Cleaning_and_Analysis.R](https://github.com/aymunir1/NASI_R_TRAINING/blob/main/Data_Cleaning_and_Analysis.R)  
**Description:**  
Demonstrates data importation, cleaning, transformation, and exploratory analysis using a COVID-19 dataset. It provides step-by-step examples of R operations, variable management, and descriptive statistics to prepare data for inferential analysis and visualization.  

**Sections Overview:**  
1. Working Directory Setup  
2. Basic R Operations (Arithmetic, Comparison, Logical)  
3. Data Types and Structures (vectors, lists, data frames)  
4. Package Installation and Loading  
5. Data Importation (`Covid Data.csv`)  
6. Data Cleaning and Transformation  
7. Exploratory Data Analysis (EDA)  
8. Preparation for Inferential Analysis and Visualization  

**Dependencies:**  
`tidyverse`, `dplyr`, `ggplot2`  

### 2. [Descriptive_and_Inferential_Analysis.R](https://github.com/aymunir1/NASI_R_TRAINING/blob/main/Descriptive_and_Inferential_Analysis.R)  
**Description:**  
Performs both descriptive and inferential statistical analyses using a student performance dataset (`Students_Grading_Dataset.csv`). The script includes hypothesis testing and visualization using `ggplot2`.  

**Key Sections:**  
1. Package Loading (`tidyverse`, `dplyr`, `ggplot2`)  
2. Data Importation and Inspection  
3. Descriptive Analysis (central tendency, dispersion, cross-tabulation)  
4. Inferential Analysis:  
   - Chi-square Test  
   - Correlation Test  
   - Independent Sample T-test  
   - ANOVA  
   - Simple and Multiple Linear Regression  
5. Graphical Analysis  

**Output:**  
- Statistical summaries and visualizations illustrating relationships between demographic and academic performance variables.  

**Interpretation Guidelines:**  
- *p-value > 0.05*: Fail to reject the null hypothesis (no significant difference)  
- *p-value < 0.05*: Reject the null hypothesis (significant difference)  
