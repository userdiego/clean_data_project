##Downloading and unzipping the data

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "data.zip")
unzip("data.zip")

##Reading in the raw data

feat <- read.table("./UCI HAR Dataset/features.txt")
labs <- read.table("./UCI HAR Dataset/activity_labels.txt")
measures_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
measures_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
act_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
act_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

##Adding the subjects and activities to the measurments

data_test <- cbind(subject_test, act_test, measures_test)
data_train <- cbind(subject_train, act_train, measures_train)

##Merging the test and train sets

data <- rbind(data_test, data_train)

##Adding the descriptive measurement and activity names to the variables

colnames(data) <- c("subject", "activity", as.character(feat$V2))
data$activity <- factor(data$activity, levels = c(1:6), labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
names(data) <- gsub("-", "_", names(data))
names(data) <- gsub("\\(", "", names(data))
names(data) <- gsub("\\)", "", names(data))
names(data) <- gsub("^t","Time", names(data))
names(data) <- gsub("^f","Freq", names(data))

## Extracting means and standard deviation measurements
## Ordering by subject

selection <- c(grep("mean()", names(data)), grep("std()", names(data)))
data <- data[ , c(1, 2, selection)]

install.packages("dplyr")
library(dplyr)
data <- arrange(data, data$subject)

## Creating tidy dataset with variable averages for each subject
## Saving dataset in .txt file

install.packages("reshape2")
library(reshape2)
melt_data <- melt(data, id = c("subject", "activity"), measure.vars = c(3:81))
tidy <- dcast(melt_data, subject + activity ~ variable, mean)
write.table(tidy, file = "tidy.txt", row.names = FALSE)
