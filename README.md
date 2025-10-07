# NASI R Training – Data Analysis and Bioinformatics Projects

   This repository contains a collection of R scripts and datasets 
   during the NextgGen Antimicrobial Stewardship Initiative Training 
   on Data Analysis with R. It highlights the practical application of R in 
   both statistical data analysis and bioinformatics, integrating key analytical 
   processes such as data cleaning, transformation, visualization, and inferential 
   statistics. The repository features real-world datasets from public health, 
   academic performance, and metagenomic studies—some of which were processed 
   using tools like BV-BRC and UseGalaxy.

##  Repository Contents
- **Data Analysis Scripts:** Demonstrate data importation, cleaning, exploratory, descriptive, and inferential statistical analysis using packages like `tidyverse`, `dplyr`, and `ggplot2`.  
- **Metagenmic Scripts:** Apply `phyloseq` and other R packages for microbial community and antimicrobial resistance (AMR) gene analysis, using datasets generated from **Kraken BIOM** and **ABRicate (BV-BRC)** outputs.  
- **Datasets:** Include `.csv`, `.biom2`, and `.tabular` files used for the analyses, provided for educational and reproducibility purposes.

##  Purpose
This repository serves as an educational and research resource, reflecting the analytical and bioinformatics skills gained during the NASI R training. It provides a comprehensive framework for students, researchers, and professionals interested in:
- Performing statistical and inferential analysis in R  
- Visualizing data for public health and academic insights  
- Conducting metagenomic data analysis and AMR gene visualization  


######################################  DATA ANALYSIS    #################################################

 1. DataC leaning and Analysis.R [R Script] (https://github.com/aymunir1/NASI_R_TRAINING/blob/main/Data_Cleaning_and_Analysis.R)  
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

 2. Descriptive and Inferential Analysis [R Scrip](https://github.com/aymunir1/NASI_R_TRAINING/blob/main/Descriptive_and_Inferential_Analysis.R)  
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
   - 

#####################################  METAGENOMIC ANALYSIS   ####################################


Microbial Diversity [R Script](https://github.com/aymunir1/NASI_R_TRAINING/blob/main/Metagenome%20Biom.R)

This R script demonstrates the workflow for importing, cleaning, and analyzing microbial community data derived from **metagenomic analysis outputs**. The BIOM file used in this script was **generated and converted using the UseGalaxy platform** after completing taxonomic classification with **Kraken**. The analysis focuses on exploring microbial diversity using the `phyloseq` and `tidyverse` packages.

##  Key Features
- Import and inspect BIOM files exported from UseGalaxy  
- Clean and rename taxonomic tables  
- Explore taxonomic distributions (e.g., abundance of *Proteobacteria*)  
- Compute **alpha diversity** (Shannon, Observed, Chao1 indices)  
- Visualize richness and diversity using `plot_richness()`  
- Perform **beta diversity** analysis and NMDS ordination (Bray–Curtis distance)
p-value > 0.05*: Fail to reject the null hypothesis (no significant difference)


Visualization of Antimicrobial Resistance Genes [R Script](https://github.com/aymunir1/NASI_R_TRAINING/blob/main/Resistance%20genes.R)

This R script provides a workflow for visualizing antimicrobial resistance (AMR) gene profiles** obtained from **ABRicate** results. The input file, `abricate.tabular`, was downloaded from the BV-BRC (Bacterial and Viral Bioinformatics Resource Center)** after performing the required metagenomic resistance gene analysis, and then imported into R for visualization and interpretation.

## 🧬 Overview
The script utilizes **tidyverse** for data manipulation and **ggplot2** for graphical representation. It counts the occurrence of resistance genes and visualizes their distribution through a horizontal bar plot — making it easy to identify the most frequent AMR genes in the dataset.
