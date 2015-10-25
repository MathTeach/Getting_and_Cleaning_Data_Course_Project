# Getting and Cleaning Data - Course Project  

## Introduction  

This repository contains all my files for the Course Project under Coursera's Getting and Cleaning Data  
Course. The files in this repository are as follows:  
* README.md - this is a markdown file that describes the data, script and other details about the project    
* CodeBook.md - this is a markdown file that describes the variables used in tidy-data.txt  
* run_analysis.R - this is an R script that transforms the raw data to the resulting tidy data set  
* tidy_data.txt - this is a text file that contains the tidy data set  

The purpose of the course project is to use R programming to convert raw data into tidy data.  

## Raw Data Files   

For this project, the data used was the Human Activity Recognition Using Smartphones Dataset. A full  
description of the data is available from the website where the data was originally obtained:   
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# [1]     

For this project, I assumed that the zipped data file has been downloaded and unzipped in the   
working directory. The data for this project can be obtained here:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

## The Script - run_analysis.R  

The key steps for the R script are as follows:  

1. The program checks if the required reshape2 package is installed. If it is not yet installed in the  
machine, the program installs it.    
2. The training and test data sets were merged into one complete data set.  
3. Mean and Standard Deviation measurements were extracted from the complete data set.  
4. Activity labels were converted to more descriptive activity names.  
5. Column names were changed to more descriptive variable names. In order to keep the column  
names readable,   certain letters were left uppercase. Converting all the letters to lowercase   
does not produce descriptive and readable column names.        
6. The average values of feature measurements for each subjectid/activity pair were calculated.  
7. A tidy data set with 180 rows and 68 columns was created. In this data set, each subject/activity    
pair has one average value per variable.    

## The Tidy Data Set - tidy_data.txt  

Please refer to CodeBook.md for a thorough discussion of the tidy data set created by run_analysis.R.

## References   
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.  
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.   
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012  

