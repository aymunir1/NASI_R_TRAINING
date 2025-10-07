****###############################################################################
#                   README – Data Analysis
# 
# Overview:
#   This repository contains two R scripts developed as a result of the knowledge
#   and practical skills I gained from the NASI (National Agency for Statistics and
#   Informatics) Training on Data Analysis with R. The scripts demonstrate data
#   cleaning, transformation, inferential statistical analysis, and data visualization
#   using the tidyverse, dplyr, and ggplot2 packages
#
###############################################################################
# Repository Contents:
#
# 1. Data Cleaning (R Script) https://github.com/aymunir1/NASI_R_TRAINING/blob/main/Data_Cleaning_and_Analysis.R
#    Description:
#      - Demonstrates data importation, cleaning, transformation, and exploratory
#        analysis using a COVID-19 dataset.
#      - Provides step-by-step execution of R operations, variable management,
#        and descriptive statistics to prepare data for inferential analysis.
#
#    Sections Overview:
#      1. Working Directory Setup
#      2. Basic R Operations (Arithmetic, Comparison, Logical)
#      3. Data Types and Structures (vectors, lists, data frames)
#      4. Package Installation and Loading
#      5. Data Importation (Covid Data.csv)
#      6. Data Cleaning and Transformation
#      7. Exploratory Data Analysis (EDA)
#      8. Preparation for Inferential Analysis and Visualization
#
#    Output:
#      - Cleaned dataset (New_Covid_Data)
#      - Summary tables and descriptive statistics
#
#    Dependencies:
#      - tidyverse
#      - dplyr
#      - ggplot2
#
###############################################################################
# 2. students_inferential_visualization.R
#    Description:
#      - Performs both descriptive and inferential statistical analyses using
#        a student performance dataset ("Students_Grading_Dataset.csv").
#      - Includes tests such as Chi-square, correlation, t-test, ANOVA, and
#        regression (simple and multiple), with results visualized using ggplot2.
#
#    Key Sections:
#      1. Package Loading (tidyverse, dplyr, ggplot2)
#      2. Data Importation and Inspection
#      3. Descriptive Analysis (central tendency, dispersion, cross-tabulation)
#      4. Inferential Analysis:
#         - Chi-square Test
#         - Correlation Test
#         - Independent Sample T-test
#         - ANOVA
#         - Simple and Multiple Linear Regression
#      5. Graphical Analysis (bar charts, scatter plots, histograms, boxplots)
#
#    Output:
#      - Statistical summaries and visualizations illustrating relationships
#        between demographic and academic performance variables.
#
#    Interpretation Guidelines:
#      - p-value > 0.05: Fail to reject the null hypothesis (no significant difference)
#      - p-value < 0.05: Reject the null hypothesis (significant difference)
#
#    Dependencies:
#      - tidyverse
#      - dplyr
#      - ggplot2
#
###############################################################################
# Usage Instructions:
#   1. Ensure R and the required packages are installed.
#   2. Place both datasets (Covid Data.csv and Students_Grading_Dataset.csv)
#      in the same working directory as the scripts.
#   3. Open each script in RStudio or any R-compatible IDE.
#   4. Run the code sections sequentially to reproduce the analyses and figures.
#
###############################################################################
# Purpose and Contribution:
#   These scripts serve as an educational and research resource demonstrating
#   how R can be applied in both public health and academic performance contexts.
#   They combine descriptive, inferential, and graphical analyses into an
#   integrated workflow suitable for thesis work, workshops, or academic tutorials.
#
# Future Extension:
#   - Integration of advanced inferential models (e.g., logistic regression)
#   - Predictive modeling and machine learning approaches
#   - Interactive data visualization using Shiny
#   - Automated report generation using R Markdown
###############################################################################
****
