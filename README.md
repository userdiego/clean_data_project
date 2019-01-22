# Peer-graded Assignment: Getting and Cleaning Data Course Project.
This repo contains the script for the analysis of the data for the Getting and Cleaning Data Course Project, along with its codebook.
The dataset consists of measurements from a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

The complete data were obtained via Coursera from the following publication:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.

The raw data are analized to extract the mean and standard deviation from each subject and each activity, of the following variables:

TimeBodyAcc-XYZ
TimeGravityAcc-XYZ
TimeBodyAccJerk-XYZ
TimeBodyGyro-XYZ
TimeBodyGyroJerk-XYZ
TimeBodyAccMag
TimeGravityAccMag
TimeBodyAccJerkMag
TimeBodyGyroMag
TimeBodyGyroJerkMag
FreqBodyAcc-XYZ
FreqBodyAccJerk-XYZ
FreqBodyGyro-XYZ
FreqBodyAccMag
FreqBodyAccJerkMag
FreqBodyGyroMag
FreqBodyGyroJerkMag

The script first downloads and unzips the data to the working directory, and its sourcing results in a tidy dataset that is saved in the working directory to "tidy.txt" for future use. 

Thank you very much for reviewing, I'll very much appreciate any comments.
