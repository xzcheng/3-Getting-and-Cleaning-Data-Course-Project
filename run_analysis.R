#################################################################################################
#####################################03 Getting and Cleaning Data################################
#################################### Week 3 Course Project ######################################
#################################################################################################

## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


setwd("/Users/xzhhuang/Documents/Coursera/3. Getting and Cleaning Data/HW/Project/UCI HAR Dataset")
library("data.table")
library("reshape2")
library("ddply"")

##################################################### Step 1####################################################
######################### Merges the training and the test sets to create one data set #########################
################################################################################################################

## Notes: I did not merge these two data sets into one until the end of step 4. In this step, we only created 3 
## data sets (x, y, subject).

# load the data
x_train <- read.table("./train/X_train.txt")   # Training set. (data)
y_train <- read.table("./train/y_train.txt")   # Training labels. (activity)
subject_train <- read.table("./train/subject_train.txt") #Each row identifies the subject who performed the activity 
                                                    # for each window sample. Its range is from 1 to 30.  (person)

x_test <- read.table("./test/X_test.txt")     # Test set. (data)
y_test <- read.table("./test/y_test.txt")     # Testlabels. (activity)
subject_test <- read.table("./test/subject_test.txt")

# create 'x' data set
x_data <- rbind(x_train, x_test)

# create 'y' data set
y_data <- rbind(y_train, y_test)

# create 'subject' data set
subject_data <- rbind(subject_train, subject_test)

##################################################### Step 2 ####################################################
################# Extract only the measurements on the mean and standard deviation for each measurement##########
#################################################################################################################

features <- read.table("features.txt")   # There are two columns in the feature data set. ID and feature names.

# getting only columns with mean() or std() in their names

mean_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

# subsetting the columns with mean or std features
x_data <- x_data[, mean_std_features]


##################################################### Step 3 ####################################################
######################### Uses descriptive activity names to name the activities in the data set ################
#################################################################################################################

activity_labels<- read.table("./activity_labels.txt")[,2]  # There are 2 columns in this data set. ID and activity names.

# labeling y_data set with the activity names
y_data[, 1] <- activity_labels[y_data[, 1]]

# labeling y_data set with column names
names(y_data) <- "activity"

##################################################### Step 4 ####################################################
############################### Appropriately labels the data set with descriptive activity names ###############
#################################################################################################################

# labeling x_data set with the destriptive feature names
names(x_data) <- features[mean_std_features, 2]

# labeling subject_data set with column names
names(subject_data) <- "subject"

# merging into one single data set
merged_data <- cbind(subject_data,y_data, x_data)
write.table(merged_data, "merged_data.txt", row.name=FALSE)
##################################################### Step 5 ##################################################################
#######Creates a second, independent tidy data set with the average of each variable for each activity and each subject########
###############################################################################################################################

average_data <- ddply(merged_data, .(subject, activity), function(x) colMeans(x[, 3:68])) 
# The first two columns are subject number and activity names. So we should start to calculate average number from the 3rd column
# to the last one. 

write.table(average_data, "average_data.txt", row.name=FALSE)
