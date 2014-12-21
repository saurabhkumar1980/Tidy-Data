run_analysis <- function(){
# Function is divided into following logical sections as per the assignment
#     Section 1. 
#                 Read data from data sets - subject, y, X, features and activity_labels  
#                 Combine test and training data. Only X for now. Subject and y combined later.
#     Section 2.
#                 Filter only mean and std columns  
#                 Assign Column Names extracted from features.txt and filtered for mean and std
#     Section 3. 
#                 Merge data set from Section 1 with activity_labels set to get descriptive activity names
#     Section 4.
#                 Use information in feature_info.txt to rename columns to more readable names.
#     Section 5.  
#                 Calculate Average for each variable for each subject and activity
#                 Write data to a text file.  
#
#  
      library(reshape2)
      library(plyr)  
  
# Section 1 - Begin  

# Read subject_test data
      subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
  
# Read y_test(activity) data      
      y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

# Read X_test(test) data      
      X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
  
# Read subject_train data
      subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
  
# Read y_train(activity) data      
      y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
  
# Read X_train(training) data      
      X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)

# Read column names for X_test and x_train from features.txt  
      features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
      column_names <- as.character(features[,2])

# Read Activity Labels
      activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
# Set column names for activity labels
      names(activity_labels) <- c("Activity ID","Activity")

# Combine test(subject, y and X) and training data(subject, y and X)  
# Merge X, y and subject sets of test data
      test_data <- cbind(subject_test, y_test, X_test)

# Merge X, y and subject sets of training data
      training_data <- cbind(subject_train, y_train, X_train)
  
#Merge test and training data sets together
      merged_test_train <- rbind(test_data, training_data)
  
# Section 1 - End  

# Section 2 - Begin  
# Find only mean and std columns from column_names read from features.txt
      mean_std_cols_only <- grep("mean[a-z]*\\(|std[a-z]*\\(", ignore.case = TRUE, column_names) + 2
#Filter data for mean and std columns.      
      merged_test_train_mean_std_only <- merged_test_train[,c(1, 2, mean_std_cols_only)]
#Assign Column Names extracted from features.txt and filtered for mean and std
      names(merged_test_train_mean_std_only) <- c("Subject","ID",column_names[mean_std_cols_only - 2])
# Section 2 - End

# Section 3 - Begin
# Merge data set from Section 1 with activity_labels set to get descriptive activity names
      merged_test_train_mean_std_only <- merge(merged_test_train_mean_std_only,activity_labels, by.x="ID", by.y="Activity ID", all.x=TRUE, sort=FALSE)
# Remove ID column from merged data      
      merged_test_train_mean_std_only <- merged_test_train_mean_std_only[,!(names(merged_test_train_mean_std_only) %in% "ID")]
# Reorder columns to bring Activity at second position
      merged_test_train_mean_std_only <- merged_test_train_mean_std_only[,c("Subject","Activity",column_names[mean_std_cols_only - 2])]
# Section 3 - End

# Section 4 - Begin
      column_names <- c("Subject","Activity",column_names[mean_std_cols_only - 2])
# Make variable names more readable by seperating each significant section with "."
# Replace multiple different occurances of %mean% with .mean. and %std% with .std.
      column_names <- gsub("-mean\\(\\)-",".mean.",column_names)
      column_names <- gsub("-std\\(\\)-",".std.",column_names)
      column_names <- gsub("-mean\\(\\)",".mean",column_names)
      column_names <- gsub("-std\\(\\)",".std",column_names)
# Replace occurances of %meanFreq% with .meanFreq
      column_names <- gsub("-meanFreq\\(\\)",".meanFreq",column_names)
# Replace t with Time, f with FFT, Acc with Accelerometer, Gyro with Gyroscope
# Mag with Magnitude. Again add "." to seperate significant names.

      column_names <- gsub("tGravity","Time.Gravity",column_names)
      column_names <- gsub("tBody","Time.Body",column_names)
      column_names <- gsub("fGravity","FFT.Gravity",column_names)
      column_names <- gsub("fBody","FFT.Body",column_names)
      column_names <- gsub("BodyAcc","Body.Accelerometer",column_names)
      column_names <- gsub("BodyGyro","Body.Gyroscope",column_names)
      column_names <- gsub("Jerk",".Jerk",column_names)
      column_names <- gsub("Jerk.Mag","Jerk.Magnitude",column_names)

# Overwrite column names of data set with descriptive column names.
      names(merged_test_train_mean_std_only) <- column_names
# Section 4 - End

# Section5 - Begin
# Calculate Average for each variable for each subject and activity
      tidy_data <- ddply(melt(merged_test_train_mean_std_only,id.vars=c("Subject", "Activity")), .(Subject, Activity,variable), summarize, Average = mean(value))
# Write data to a text file.  
      write.table(tidy_data, file = "tidy_data.txt", row.name=FALSE)        
# Section5 - End
}
