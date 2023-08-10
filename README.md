# Coursera_Getting-and-Cleaning-Data

This repository is for submitting the final assignment for the "Getting and Cleaning Data" course offered by Coursera.

**Course:** [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning/home/welcome)

**Dataset:** [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## File Description

- **Codebook:** This codebook contains explanations of variables and the tasks performed for data cleaning.

- **run_analysis.R:** This R code file represents the process of transforming messy data into tidy data as the following steps:

1. Loading the data.
2. Changing variable names.
3. Changing variable types (converting the 'activity' variable into a factor variable with understandable labels).
4. Extracting specified variables.
5. Merging training and test data into a single set, and adding an additional variable to differentiate between them.
6. Making variable names understandable.
7. Summarizing data using means grouped by subjects and activities.
