a code book that describes the variables, the data, and any transformations
 or work that you performed to clean up the data called CodeBook.md

I. Data sets:
(1) merged_data: This is a merged data set for step 1 -step 4, which combined training and test data sets with labeled activity names 
and data feature names. These measurements only involve the one on the mean and standard deviation. 
(2) average_data: This is the data set for step 5:  a second, independent tidy data set with the average of each variable for 
each activity and each subject for merged_data. 

II. Variables:
*** merged_data
(1) subject: the id number for subjects. range:[1,30]
(2) activity: activity names. 
(3)-(68)feature variables: I extracted only the measurements on the mean and standard deviation.The variables names are as follows:

[3]                                                             "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
[5] "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
[9] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"         "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
[17] "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[21] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"           "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
[29] "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[33] "tBodyAccMag-mean()"          "tBodyAccMag-std()"           "tGravityAccMag-mean()"       "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"       "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
[41] "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[45] "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
[53] "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[57] "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"          "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 

*** average_data
(1) subject: the id number for subjects. range:[1,30]
(2) activity: activity names. 
(3)-(68) feature variables: I calculated the average number of the mean and standard deviation measurement extracted in the merged_data at 
each subject per activity level. The variables names are as follows:
 [3]                                                              "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
 [5] "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
 [9] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"         "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
[17] "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[21] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"           "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
[29] "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[33] "tBodyAccMag-mean()"          "tBodyAccMag-std()"           "tGravityAccMag-mean()"       "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"       "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
[41] "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[45] "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
[53] "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[57] "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"          "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 

III. details for run_analysis.R 
I worked on these raw data sets to get these two tidy data sets in the following five steps according to the course project requirement.

Step 1. Merges the training and the test sets to create one data set.
     I loaded the txt files in to the R.studio. Actually, I did not create one data set which combined training and test sets in this step.
     Instead, I created 3 data sets: x_data, y_data, and subject_data, to merge training and test data into each data set. 
Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
     I used "grep" command to extract measurement variables with "mean" or "standard deviation" from "features" data set. Then I used this data set
     to extract corresponding variables from x_data. 
Step 3. Uses descriptive activity names to name the activities in the data set
     I first loaded "activity_labels" data set and then used this to label y_data. 
Step 4. Appropriately labels the data set with descriptive activity names.
     I labeled data sets "x_data" and "subject_data", and merged 3 labeled data sets, x_data, y_data, and subject_data, into one tidy data set: merged_data
Step 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
     I used "ddply" command to  calculate average number for all the columns except the first two columns (subject and activity), at per subject and activity level.
     