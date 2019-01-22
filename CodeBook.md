CODEBOOK

==================================================================================================
Subjects: Numbered from 1 to 30.
==================================================================================================
Activities: 

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
==================================================================================================
Features:
==================================================================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

For each of the features in each axis, the mean and standard deviation were calculated.

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

==================================================================================================
