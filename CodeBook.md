
# CodeBook for tidy_data.txt  

## Project Description    

The goal of this course project under Coursera's Getting and Cleaning Data Course is to use R programming  
to convert raw data into tidy data.

## Study design   

### Collection of the Raw Data       

The raw data used for this project was the Human Activity Recognition Using Smartphones Dataset. In the    
experiment, to collect the raw data, 30 subjects (in the age bracket [19, 48]) performed six different    
activities while wearing a smartphone on their waist. Using the phone's embedded accelerometer and gyroscope,   
various measurements were obtained. The data was randomly partitioned into two sets, where 70% of the subjects   
generated the training data and 30% the test data. Further processing was done resulting in the final raw   
dataset used for this project.    

### Notes on the Raw Data  

The text files that were used in R for this project are as follows: x_train.txt, y_train.txt, subject_train.txt,     
x_test.txt, y_test.txt, subject_test.txt, activity_labels.txt and features.txt. Other informational files that   
were used are: features_info.txt and README.txt. Inertial Signals files were not used in the project.  

## Creating the Tidy Data File   

The tidy data in tidy_data.txt, is a wide-format data with 180 rows and 68 columns. Each row corresponds to an   
observation. Each column corresponds to a variable. Each value of the "Average" variables (columns 3 - 68)  
corresponds to an average of feature measurements for a subjectid/activity pair. R programming was used to  
transform the raw data into tidy data.  

### Guide to Creating the Tidy Data File

The key steps in converting the raw data to tidy data are:    
1. Manually download the zipped file from:   
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip   
and save in your working directory.     
2. Manually extract the data files from the zipped file. New directories are created.   
3. Merge the training and test data sets into one complete data set.   
4. Column names for the measurements columns were assigned using the features.txt file.   
5. Extract the Mean and Standard Deviation measurements from the complete data set.   
6. Convert activity labels into more descriptive activity names using the activity_labels.txt file.  
7. Column names were changed to more descriptive variable names. In order to keep the column names readable,   
certain letters were left uppercase. Converting all the letters to lowercase does not produce descriptive  
and readable column names.    
8. Calculate the average values of feature measurements for each subjectid/activity pair.   
9. Rename the columns to reflect the result of the "averaging process". Mean or StDev was added to the  
beginning of each column name.   
10. Write the tidy data set to the file tidy_data.txt. This data set has 180 rows and 68 columns.   

### Cleaning the Data  

The R script, run_analysis.R, performs the following broad steps:   
Step 1 - Merge the training and test sets to create one data set.   
Step 2 - Extract only the measurements on the mean and standard deviation for each measurement.   
Step 3 - Use descriptive activity names to name the activities in the data set.  
Step 4 - Appropriately label the data set with descriptive variable names.     
Step 5 - From the data in Step 4, create a second, independent tidy data set with the average   
of each variable for each activity and each subject.    

According to Hadley Wickham, a tidy data has the following properties: [1]    
* Each variable forms a column.  
* Each observation forms a row.  
* Each type of observational unit forms a table.  

According to Jeff Leek, professor at Johns Hopkins Bloomberg School of Public Health and instructor of    
Coursera's Getting and Cleaning Data class, other properties of tidy data are:         
* There is a row of variable names at the top of the file.    
* Variable names are human readable.    
* In general, data should be saved in one file per table.    

The text file created by run_analysis.R, tidy_data.txt, satisfies these properties.  

__In order to view the file tidy_data.txt, it would be best to read it into R and print in the console. The__         
__following line of coding can be used to view the first 6 rows:__   

    >tidy_data <- read.table("tidy_data.txt", header = TRUE)   
    >head(tidy_data)   

## Description of Variables  

* subjectid    
  location: column 1    
  values: integer value in the range [1,30]    
  description: This variable is used as subject identifier. Each subject or participant was assigned a unique    
  integer identifier.    

* activity      
  location: column 2    
  values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING      
  description: This variable is used to denote the various activities for which measurements were taken. Each      
  subject performed each of the six activities.         

* AveragetBodyAccMeanX                 
  AveragetBodyAccMeanY     
  AveragetBodyAccMeanZ       
  AveragetGravityAccMeanX                
  AveragetGravityAccMeanY     
  AveragetGravityAccMeanZ             
  AveragetBodyAccJerkMeanX  
  AveragetBodyAccJerkMeanY          
  AveragetBodyAccJerkMeanZ  
  AveragetBodyGyroMeanX             
  AveragetBodyGyroMeanY  
  AveragetBodyGyroMeanZ             
  AveragetBodyGyroJerkMeanX    
  AveragetBodyGyroJerkMeanY          
  AveragetBodyGyroJerkMeanZ   
  AveragetBodyAccMagMean             
  AveragetGravityAccMagMean  
  AveragetBodyAccJerkMagMean         
  AveragetBodyGyroMagMean   
  AveragetBodyGyroJerkMagMean        
  AveragefBodyAccMeanX   
  AveragefBodyAccMeanY               
  AveragefBodyAccMeanZ   
  AveragefBodyAccJerkMeanX           
  AveragefBodyAccJerkMeanY   
  AveragefBodyAccJerkMeanZ            
  AveragefBodyGyroMeanX   
  AveragefBodyGyroMeanY              
  AveragefBodyGyroMeanZ   
  AveragefBodyAccMagMean             
  AveragefBodyBodyAccJerkMagMean   
  AveragefBodyBodyGyroMagMean         
  AveragefBodyBodyGyroJerkMagMean    
  AveragetBodyAccStDevX              
  AveragetBodyAccStDevY   
  AveragetBodyAccStDevZ              
  AveragetGravityAccStDevX   
  AveragetGravityAccStDevY           
  AveragetGravityAccStDevZ   
  AveragetBodyAccJerkStDevX          
  AveragetBodyAccJerkStDevY   
  AveragetBodyAccJerkStDevZ          
  AveragetBodyGyroStDevX   
  AveragetBodyGyroStDevY             
  AveragetBodyGyroStDevZ   
  AveragetBodyGyroJerkStDevX         
  AveragetBodyGyroJerkStDevY   
  AveragetBodyGyroJerkStDevZ         
  AveragetBodyAccMagStDev   
  AveragetGravityAccMagStDev         
  AveragetBodyAccJerkMagStDev   
  AveragetBodyGyroMagStDev            
  AveragetBodyGyroJerkMagStDev   
  AveragefBodyAccStDevX              
  AveragefBodyAccStDevY   
  AveragefBodyAccStDevZ               
  AveragefBodyAccJerkStDevX  
  AveragefBodyAccJerkStDevY         
  AveragefBodyAccJerkStDevZ   
  AveragefBodyGyroStDevX             
  AveragefBodyGyroStDevY   
  AveragefBodyGyroStDevZ             
  AveragefBodyAccMagStDev   
  AveragefBodyBodyAccJerkMagStDev    
  AveragefBodyBodyGyroMagStDev   
  AveragefBodyBodyGyroJerkMagStDev   
   
 location: columns 3 - 68     
 values: normalized numeric values within the range [-1,1]      
 description: From the raw data for the 561 - feature vector, mean and standard deviation variables were extracted.     
 For each subjectid/activity pair, the average value for each extracted variable was calculated and stored in       
 tidy_data.txt. The 66 variables above are the result of the "averaging process".      

## Sources   

[1] Wickham, Hadley. Tidy Data. Journal of Statistical Software.  
http://vita.had.co.nz/papers/tidy-data.pdf   

[2] Leek, Jeff. Components of Tidy Data (Course Notes).   
http://jtleek.com/modules/03_GettingData/01_03_componentsOfTidyData/#4    

