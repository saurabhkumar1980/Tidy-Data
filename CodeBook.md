# Code Book
Author: "Saurabh Kumar"
Date: "Saturday, December 20, 2014"

This Code Book describes the data strcture of the tidy data set generated from run_analysis.R and the variables from the features.txt that have been included in the tiday data set. For additional details, please refer to README.

## Tidy Data : Data Structure

Tidy data set is generated from run_analysis.R and is stored in tidy_data.txt file. It has the follwing columns.

COLUMN        | DESCRIPTION   | DATA TYPE
------------- | ------------- | -------------
Subject       | An identifier of the subject who carried out the experiment.  | Integer
Activity      | Activity performed by the subject. It has six distinct values - (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)   | Character
variable      | Time and frequency domain variables which are either mean or standard deviation. | Character
Average       | Average of the variable for each combination of Subject and Activity      | Numeric

## Tidy Data : Substitutions used
ORIGINAL NAME | SUBSTITUTION   
------------- | ------------- 
t             | Time
f             | FFT
Acc           | Accelerometer
Gyro          | Gyroscope
Mag           | Magnitude

## Tidy Data : Variables captured
VARIABLE                                   | ORIGINAL NAME 
-------------                              | ------------- 
Time.Body.Accelerometer.mean.X             |tBodyAcc-mean()-X              
Time.Body.Accelerometer.mean.Y             |tBodyAcc-mean()-Y              
Time.Body.Accelerometer.mean.Z             |tBodyAcc-mean()-Z              
Time.Body.Accelerometer.std.X              |tBodyAcc-std()-X               
Time.Body.Accelerometer.std.Y              |tBodyAcc-std()-Y               
Time.Body.Accelerometer.std.Z              |tBodyAcc-std()-Z               
Time.GravityAcc.mean.X                     |tGravityAcc-mean()-X           
Time.GravityAcc.mean.Y                     |tGravityAcc-mean()-Y           
Time.GravityAcc.mean.Z                     |tGravityAcc-mean()-Z           
Time.GravityAcc.std.X                      |tGravityAcc-std()-X            
Time.GravityAcc.std.Y                      |tGravityAcc-std()-Y            
Time.GravityAcc.std.Z                      |tGravityAcc-std()-Z            
Time.Body.Accelerometer.Jerk.mean.X        |tBodyAccJerk-mean()-X          
Time.Body.Accelerometer.Jerk.mean.Y        |tBodyAccJerk-mean()-Y          
Time.Body.Accelerometer.Jerk.mean.Z        |tBodyAccJerk-mean()-Z          
Time.Body.Accelerometer.Jerk.std.X         |tBodyAccJerk-std()-X           
Time.Body.Accelerometer.Jerk.std.Y         |tBodyAccJerk-std()-Y           
Time.Body.Accelerometer.Jerk.std.Z         |tBodyAccJerk-std()-Z           
Time.Body.Gyroscope.mean.X                 |tBodyGyro-mean()-X             
Time.Body.Gyroscope.mean.Y                 |tBodyGyro-mean()-Y             
Time.Body.Gyroscope.mean.Z                 |tBodyGyro-mean()-Z             
Time.Body.Gyroscope.std.X                  |tBodyGyro-std()-X              
Time.Body.Gyroscope.std.Y                  |tBodyGyro-std()-Y              
Time.Body.Gyroscope.std.Z                  |tBodyGyro-std()-Z              
Time.Body.Gyroscope.Jerk.mean.X            |tBodyGyroJerk-mean()-X         
Time.Body.Gyroscope.Jerk.mean.Y            |tBodyGyroJerk-mean()-Y         
Time.Body.Gyroscope.Jerk.mean.Z            |tBodyGyroJerk-mean()-Z         
Time.Body.Gyroscope.Jerk.std.X             |tBodyGyroJerk-std()-X          
Time.Body.Gyroscope.Jerk.std.Y             |tBodyGyroJerk-std()-Y          
Time.Body.Gyroscope.Jerk.std.Z             |tBodyGyroJerk-std()-Z          
Time.Body.AccelerometerMag.mean            |tBodyAccMag-mean()             
Time.Body.AccelerometerMag.std             |tBodyAccMag-std()              
Time.GravityAccMag.mean                    |tGravityAccMag-mean()          
Time.GravityAccMag.std                     |tGravityAccMag-std()           
Time.Body.Accelerometer.JerkMag.mean       |tBodyAccJerkMag-mean()         
Time.Body.Accelerometer.JerkMag.std        |tBodyAccJerkMag-std()          
Time.Body.GyroscopeMag.mean                |tBodyGyroMag-mean()            
Time.Body.GyroscopeMag.std                 |tBodyGyroMag-std()             
Time.Body.Gyroscope.JerkMag.mean           |tBodyGyroJerkMag-mean()        
Time.Body.Gyroscope.JerkMag.std            |tBodyGyroJerkMag-std()         
FFT.Body.Accelerometer.mean.X              |fBodyAcc-mean()-X              
FFT.Body.Accelerometer.mean.Y              |fBodyAcc-mean()-Y              
FFT.Body.Accelerometer.mean.Z              |fBodyAcc-mean()-Z              
FFT.Body.Accelerometer.std.X               |fBodyAcc-std()-X               
FFT.Body.Accelerometer.std.Y               |fBodyAcc-std()-Y               
FFT.Body.Accelerometer.std.Z               |fBodyAcc-std()-Z               
FFT.Body.Accelerometer.meanFreq-X          |fBodyAcc-meanFreq()-X          
FFT.Body.Accelerometer.meanFreq-Y          |fBodyAcc-meanFreq()-Y          
FFT.Body.Accelerometer.meanFreq-Z          |fBodyAcc-meanFreq()-Z          
FFT.Body.Accelerometer.Jerk.mean.X         |fBodyAccJerk-mean()-X          
FFT.Body.Accelerometer.Jerk.mean.Y         |fBodyAccJerk-mean()-Y          
FFT.Body.Accelerometer.Jerk.mean.Z         |fBodyAccJerk-mean()-Z          
FFT.Body.Accelerometer.Jerk.std.X          |fBodyAccJerk-std()-X           
FFT.Body.Accelerometer.Jerk.std.Y          |fBodyAccJerk-std()-Y           
FFT.Body.Accelerometer.Jerk.std.Z          |fBodyAccJerk-std()-Z           
FFT.Body.Accelerometer.Jerk.meanFreq-X     |fBodyAccJerk-meanFreq()-X      
FFT.Body.Accelerometer.Jerk.meanFreq-Y     |fBodyAccJerk-meanFreq()-Y      
FFT.Body.Accelerometer.Jerk.meanFreq-Z     |fBodyAccJerk-meanFreq()-Z      
FFT.Body.Gyroscope.mean.X                  |fBodyGyro-mean()-X             
FFT.Body.Gyroscope.mean.Y                  |fBodyGyro-mean()-Y             
FFT.Body.Gyroscope.mean.Z                  |fBodyGyro-mean()-Z             
FFT.Body.Gyroscope.std.X                   |fBodyGyro-std()-X              
FFT.Body.Gyroscope.std.Y                   |fBodyGyro-std()-Y              
FFT.Body.Gyroscope.std.Z                   |fBodyGyro-std()-Z              
FFT.Body.Gyroscope.meanFreq-X              |fBodyGyro-meanFreq()-X         
FFT.Body.Gyroscope.meanFreq-Y              |fBodyGyro-meanFreq()-Y         
FFT.Body.Gyroscope.meanFreq-Z              |fBodyGyro-meanFreq()-Z         
FFT.Body.AccelerometerMag.mean             |fBodyAccMag-mean()             
FFT.Body.AccelerometerMag.std              |fBodyAccMag-std()              
FFT.Body.AccelerometerMag.meanFreq         |fBodyAccMag-meanFreq()         
FFT.BodyBody.Accelerometer.JerkMag.mean    |fBodyBodyAccJerkMag-mean()     
FFT.BodyBody.Accelerometer.JerkMag.std     |fBodyBodyAccJerkMag-std()      
FFT.BodyBody.Accelerometer.JerkMag.meanFreq|fBodyBodyAccJerkMag-meanFreq() 
FFT.BodyBody.GyroscopeMag.mean             |fBodyBodyGyroMag-mean()        
FFT.BodyBody.GyroscopeMag.std              |fBodyBodyGyroMag-std()         
FFT.BodyBody.GyroscopeMag.meanFreq         |fBodyBodyGyroMag-meanFreq()    
FFT.BodyBody.Gyroscope.JerkMag.mean        |fBodyBodyGyroJerkMag-mean()    
FFT.BodyBody.Gyroscope.JerkMag.std         |fBodyBodyGyroJerkMag-std()     
FFT.BodyBody.Gyroscope.JerkMag.meanFreq    |fBodyBodyGyroJerkMag-meanFreq()


## Reference
Source Data : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Problem Statement and Solution description : Available in ReadMe

## Information about how variables were captured

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
