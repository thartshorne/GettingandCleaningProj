# GettingandCleaningProj
Course Project for the Getting and Cleaning Data Coursera course
The script loads the plyr and dplyr libraries, then proceeds to load the two text files into respective variables.
The two data frames are merged together,and then the frames are trimmed using the select function to select only the mean and standard deviation columns as desired. 
The columns are then renamed. 
Next, the Activity labels are loaded, binded and renamed, creating a one column data frame. This is then binded to the larger data frame.
The same is done for subjects.
The data is then grouped by subjects, and activity next, then the averages are taken and stored in a new data frame.

tBodyAccMeanX, tBodyAccMeanY, tBodyAccMeanZ,tBodyAccStdX, tBodyAccStdY, tBodyAccStdZ 
These are the means and standard deviations for the body accelerometer in all 3 dimensions

tGravityAccMeanX,tGravityAccMeanY,tGravityAccMeanZ,tGravityAccStdX,tGravityAccStdY,tGravityAccStdZ
These are the means and standard deviations for the gravity accelerometer in all 3 dimensions

tBodyAccJerkMeanX,tBodyAccJerkMeanY,tBodyAccJerkMeanZ,tBodyAccJerkStdX,tBodyAccJerkStdY,tBodyAccJerkStdZ
These are the means and standard deviations for the body accelerometer Jerk in all 3 dimensions

tBodyGyroMeanX, tBodyGyroMeanY,tBodyGyroMeanZ,tBodyGyroStdX,tBodyGyroStdY,tBodyGyroStdZ
These are the means and standard deviations for the body gyroscope in all 3 dimensions


tBodyGyroJerkMeanX,tBodyGyroJerkMeanY,tBodyGyroJerkMeanZ,tBodyGyroJerkStdX,tBodyGyroJerkStdY,tBodyGyroJerkStdZ
These are the means and standard deviations for the body gyroscope Jerk in all 3 dimensions

tBodyAccMagMean,tBodyAccMagStd, 
These are the means and standard deviations for the body accelerometer magnitude

tBodyGyroMagMean,tBodyGyroMagStd,
These are the means and standard deviations for the body gyroscope magnitude

tBodyGyroJerkMagMean,tBodyGyroJerkMagStd,
These are the means and standard deviations for the body gyroscope jerk magnitude

fBodyAccMeanX,fBodyAccMeanY,fBodyAccMeanZ, fBodyAccStdX,fBodyAccStdY,fBodyAccStdZ
These are the means and standard deviations for the body accelerometer in all 3 dimensions under a fast fourier transformation


fBodyAccJerkMeanX,fBodyAccJerkMeanY,fBodyAccJerkMeanZ,fBodyAccJerkStdX,fBodyAccJerkStdY,fBodyAccJerkStdZ
These are the means and standard deviations for the body accelerometer jerk in all 3 dimensions under a fast fourier transformation

fBodyGyroMeanX,fBodyGyroMeanY, fBodyGyroMeanZ,fBodyGyroStdX,fBodyGyroStdY,fBodyGyroStdZ
These are the means and standard deviations for the body gyroscope in all 3 dimensions under a fast fourier transformation

fBodyAccMagMean,fBodyAccMagStd
These are the means and standard deviations for the body accelerometer magnitude under a fast fourier transformation

fBodyAccJerkMagMean,fBodyAccJerkMagStd
These are the means and standard deviations for the body accelerometer jerk magnitude under a fast fourier transformation

fBodyBodyGyroMagMean,fBodyBodyGyroMagStd
These are the means and standard deviations for the body gyroscope magnitude under a fast fourier transformation

fBodyBodyGyroJerkMagMean,fBodyBodyGyroJerkMagStd
These are the means and standard deviations for the body gyroscope jerk magnitude under a fast fourier transformation
