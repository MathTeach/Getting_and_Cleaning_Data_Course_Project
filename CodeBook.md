
# CodeBook for tidy_data.txt  

## Description of the Data  

The raw data used for this project was the Human Activity Recognition Using Smartphones Dataset. In the  
experiment to collect the raw data, 30 subjects performed six different activities while wearing a smartphone on  
their waist. Using the phone's embedded accelerometer and gyroscope, various measurements were obtained. Further  
processing was done resulting in the dataset used for this project.  

The tidy data, tidy_data.txt, is a wide-format data with 180 rows and 68 columns. Each row corresponds to an   
observation. Each column corresponds to a variable. Each value of the "Average" variables (columns 3 - 68)  
corresponds to an average of feature measurements for a subjectid/activity pair. R programming was used to  
transform the raw data into tidy data.  

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

## Transformation of Data    

From the raw data, R programming was used to derive the tidy data. The key steps in the transformation are:  

1. The training and test data sets were merged into one complete data set.   
2. Mean and Standard Deviation measurements were extracted from the complete data set.  
3. Activity labels were converted to more descriptive activity names.   
4. Column names were changed to more descriptive variable names. In order to keep the column names readable,   
certain letters were left uppercase. Converting all the letters to lowercase does not produce descriptive  
and readable column names.   
5. The average values of feature measurements for each subjectid/activity pair were calculated.  
6. A tidy data set with 180 rows and 68 columns was created and written to tidy_data.txt. In this data set,   
each subjectid/activity pair has one average value per variable.   

