Code Book 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccXYZ and timeGyroXYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccXYZ and timeGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerkXYZ and timeBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAccXYZ, freqBodyAccJerkXYZ, freqBodyGyroXYZ, freqBodyAccJerkMag, freqBodyGyroMag, freqBodyGyroJerkMag. (Note the 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAccXYZ  
timeGravityAccXYZ  
timeBodyAccJerkXYZ  
timeBodyGyroXYZ  
timeBodyGyroJerkXYZ  
timeBodyAccMag  
timeGravityAccMag  
timeBodyAccJerkMag  
timeBodyGyroMag  
timeBodyGyroJerkMag  
freqBodyAccXYZ  
freqBodyAccJerkXYZ  
freqBodyGyroXYZ  
freqBodyAccMag  
freqBodyAccJerkMag  
freqBodyGyroMag  
freqBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

Mean: Mean value  
Std: Standard deviation

The first two variables of each feature vector are:  

activity: Names the activity which the subject performed  
subject: An identifier of the subject who carried out the experiment

There are 10299 observations in the raw data. Each of the 30 subjects performed each of the 6 activities more than once. In this data set each row corresponds to a combination of subject and activity so there are 180 rows. For each of this combination the variables are the average of all the observations for this subject and activity. 

The complete list of variables of each feature vector:  
  
activity  
subject  
timeBodyAccMeanX  
timeBodyAccMeanY  
timeBodyAccMeanZ  
timeGravityAccMeanX  
timeGravityAccMeanY  
timeGravityAccMeanZ  
timeBodyAccJerkMeanX  
timeBodyAccJerkMeanY  
timeBodyAccJerkMeanZ  
timeBodyGyroMeanX  
timeBodyGyroMeanY  
timeBodyGyroMeanZ  
timeBodyGyroJerkMeanX  
timeBodyGyroJerkMeanY  
timeBodyGyroJerkMeanZ  
timeBodyAccMagMean  
timeGravityAccMagMean  
timeBodyAccJerkMagMean  
timeBodyGyroMagMean  
timeBodyGyroJerkMagMean  
freqBodyAccMeanX  
freqBodyAccMeanY  
freqBodyAccMeanZ  
freqBodyAccJerkMeanX  
freqBodyAccJerkMeanY  
freqBodyAccJerkMeanZ  
freqBodyGyroMeanX  
freqBodyGyroMeanY  
freqBodyGyroMeanZ  
freqBodyAccMagMean  
freqBodyAccJerkMagMean  
freqBodyGyroMagMean  
freqBodyGyroJerkMagMean  
timeBodyAccStdX  
timeBodyAccStdY  
timeBodyAccStdZ  
timeGravityAccStdX  
timeGravityAccStdY  
timeGravityAccStdZ  
timeBodyAccJerkStdX  
timeBodyAccJerkStdY  
timeBodyAccJerkStdZ  
timeBodyGyroStdX  
timeBodyGyroStdY  
timeBodyGyroStdZ  
timeBodyGyroJerkStdX  
timeBodyGyroJerkStdY  
timeBodyGyroJerkStdZ  
timeBodyAccMagStd  
timeGravityAccMagStd  
timeBodyAccJerkMagStd  
timeBodyGyroMagStd  
timeBodyGyroJerkMagStd  
freqBodyAccStdX  
freqBodyAccStdY  
freqBodyAccStdZ  
freqBodyAccJerkStdX  
freqBodyAccJerkStdY  
freqBodyAccJerkStdZ  
freqBodyGyroStdX  
freqBodyGyroStdY  
freqBodyGyroStdZ  
freqBodyAccMagStd  
freqBodyAccJerkMagStd  
freqBodyGyroMagStd  
freqBodyGyroJerkMagStd  