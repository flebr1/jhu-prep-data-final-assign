#
# Script to prepare a summarized dataset based on the 'Human Activity Recognition Using Smartphones Dataset'
# provided by UCI (see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
#
# -----------------------------------------------------------------------------------------
# !! NOTICE - prerequisites to running this code !!
# 
# 1. You installed the dplyr package in your R environment.
#
# 2. Your working directory is set as per following instructions:
#
# 2.a. You downloaded the original dataset from 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# 2.b. You unzipped it into a 'UCI HAR Dataset' folder (or whatever name you like).
#
# 2.c. You set your R session working directory to be that folder (from step 2.b).
# -----------------------------------------------------------------------------------------
#
# The script consists in 5 main steps to eventually generate a single file 'uci_har_summarized_data.txt',
# which contains the summarized tidy dataset (a new independent dataset) in table format.
# 
# For more details about the file content, please refer to CodeBook.md.
#
# More comments and notes are available in the below code if you are interested in understanding 
# further how we generated those data (but you don't have to, if your goal is just to use the data).
#

#
# 0. a few constants used later in the script...
#

rootDirPath <- "."
trainDirPath <- paste0(rootDirPath, "/train")
testDirPath <- paste0(rootDirPath, "/test")
finalFilePath <- paste0(rootDirPath, "/uci_har_summarized_data.txt")

#
# 1. 'merge' the training and the test sets to create one dataset.
#
# Note1 - here we do NOT merge the raw "inertial" data, because they are not required to 
# produce the final summarized tidy dataset... and we don't like to do unnecessary work.
#
# Note2 - in fact here we do NOT merge YET subject, x and y... because keeping them separate 
# for now will make the implementation of step 2 & 3 much simpler/cleaner than otherwise.
#

subjectTrain <- read.table(paste0(trainDirPath, "/subject_train.txt"))
subjectTest <- read.table(paste0(testDirPath, "/subject_test.txt"))
subject <- rbind(subjectTrain, subjectTest)

xTrain <- read.table(paste0(trainDirPath, "/X_train.txt"))
xTest <- read.table(paste0(testDirPath, "/X_test.txt"))
x <- rbind(xTrain, xTest)

yTrain <- read.table(paste0(trainDirPath, "/y_train.txt"))
yTest <- read.table(paste0(testDirPath, "/y_test.txt"))
y <- rbind(yTrain, yTest)

#
# 2. Extract only the measurements on the mean and standard deviation 
#    for each measurement in the original dataset.
#
# Note1 - we use the original "features.txt", which indexes the 561 variables we have so far 
# in 'x' after step 1, in order to identify the indexes for the mean and standard deviation 
# measurements in the original dataset.
#
# Note2 - we create a new data frame - 'xSelected' - to keep the selected features, 
# and we give it already some clear variable names.
#

originalFeatures <- read.table(paste0(rootDirPath, "/features.txt"))
selectedFeatureIndexes <- grep("\\-mean\\(\\)\\-|\\-std\\(\\)\\-", originalFeatures$V2)

xSelected <- x[,selectedFeatureIndexes]

selectedFeatureNames <- as.character(originalFeatures$V2)[selectedFeatureIndexes]
selectedFeatureNames <- sub("\\(\\)", "", selectedFeatureNames)
names(xSelected) <- selectedFeatureNames

#
# 3. Use descriptive activity names to name the activities in the dataset.
#
# Note1 - we also already give a clear variable name for this 'activity' information.
#
# Note2 - we typecast the original list of int values in 'y' (from step 1) into factor values, 
# to benefit from enumeration principles and redefine the levels more explicitly.
#

names(y) <- c("activity")

y$activity <- as.factor(y$activity)
levels(y$activity) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

#
# 4. Appropriately label the dataset with descriptive variable names.
#
# Note1 - we already gave clear variable names to 'xSelected' and 'y', so here we do the same 
# for subject and finally merge 'subject', 'y', and 'xSelected' into a single data frame.

names(subject) <- c("subject")
mergedData <- cbind(subject, y, xSelected)

#
# 5. From the dataset obtained in step 4, creates a second independent tidy data set 
# with the average of each variable for each activity and each subject.
#
# Note1 - using library dplyr here, so please install it if not done yet.
#
# Note2 - we also modify the names of summarized variables to add a "-mean" prefix.
#

if (!require(dplyr)) stop("Please install dplyr package")

summarizedData <- group_by(mergedData, subject, activity) %>% summarize_all(mean)

meanVariableName <- function(x) { paste0(x, "-mean") }
names(summarizedData) <- c("subject", "activity", sapply(names(summarizedData)[-(1:2)], meanVariableName))

finalData <- as.data.frame(summarizedData)
write.table(finalData, finalFilePath, row.names = FALSE)

#
# note - to read the file back in R:
# uciHarSummarizedData <- read.table(finalFilePath, header = TRUE)
#
