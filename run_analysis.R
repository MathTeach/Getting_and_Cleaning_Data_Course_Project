## Before running this script, make sure that the zipped data file is downloaded and extracted
## in the working directory. Upon extracting the zipped file, the subdirectory "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset"
## is created, containing all the necessary data files.

## This script requires the reshape2 package. It will check if the package is installed
## in your computer. If not, it will be installed.

if(require("reshape2")){
  print("reshape2 is installed correctly")
} else {
  print("trying to install reshape2")
  install.packages("reshape2")
  if(require("reshape2")){
    print("reshape2 has been installed")
  } else {
    stop("could not install reshape2 in your system")
  }
}

library(reshape2)

## Step 1 - Merge the training and test sets to create one data set.

## The following merges are performed:
## (1) x_train.txt, y_train.txt, subject_train.txt into train_data
## (2) x_test.txt, y_test.txt, subject_test,txt into test_data
## (3) train_data and test_data into complete_data

print("reading and merging the data files")

## train files are listed, read in using read.table and merged by column (using cbind)
files_train <- list.files(path = "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/", pattern = glob2rx("*train.txt"), full.names = TRUE)
train_data <- do.call("cbind", lapply(files_train, read.table))

## test files are listed, read and merged by column (using cbind)
files_test <- list.files(path = "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/" , pattern = glob2rx("*test.txt"), full.names = TRUE)
test_data <- do.call("cbind", lapply(files_test, read.table))

## train_data and test_data are merged by row (using rbind)
complete_data <- rbind(train_data, test_data)

## Step 2 - Extract only the measurements on the mean and standard deviation for each measurement.

print("extracting required measurements")

## Read the features.txt file.
features <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")
features_vector <- as.vector(features[,2])

## Assign column names to our dataframe complete_data.
names(complete_data) <- c("subjectid", features_vector, "activity")

## Extract mean and standard deviation measurements and keeping subjectid and activity columns.
select_data <- complete_data[, c(1, 563, grep("-mean()", names(complete_data),fixed = TRUE), grep("-std()", names(complete_data), fixed = TRUE))]

## Step 3 - Use descriptive activity names to name the activities in the data set.

print("assigning descriptive activity names")

## Read the activity_labels.txt file.

activity_labels <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")

## Convert activity labels with their activity names for activity column.
select_data$activity <- factor(select_data$activity, levels = activity_labels[, 1], labels = activity_labels[, 2])

## Step 4 - Appropriately label the data set with descriptive variable names.
print("assigning descriptive variable names")

names(select_data) <- gsub("[-()]","", names(select_data))
names(select_data) <- gsub("std","StDev", names(select_data))
names(select_data) <- gsub("mean","Mean", names(select_data))

## Step 5 - From the data in Step 4, create a second, independent tidy data set with the average 
## of each variable for each activity and each subject.
print("creating the tidy data set")

## Long data is created using melt function. Resulting data frame has four columns - subjectid,
## activity, variable and value.
select_long <- melt(select_data, id.vars = c("subjectid", "activity"))

## Wide data is created using dcast function. Resulting data frame has 68 columns and the values
## are means for each variable per subjectid per activity.
select_wide <- dcast(select_long, subjectid + activity ~ variable, fun.aggregate = mean)

## Rename columns with measurements to reflect that the values are now averages. 
names(select_wide)[-c(1,2)] <- paste0("Average", names(select_wide)[-c(1,2)])

## Use write.table function to create the text file, tidy_data.txt, from the select_wide
## data frame.

write.table(select_wide, file = "tidy_data.txt", row.names = FALSE)

print("the text file, tidy_data.txt, has been created")