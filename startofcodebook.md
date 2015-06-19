Data for this project was obtained from the UCI Machine Learning Repository. You can read more about the data and how it was obtained at the UCI Machine Learning link here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

There are 68 variables in this dataset, 66 of which are measurements from the original UCI data. Please see below for variable names and descriptions. The dataset itself contains the average of each activity for each subject and measurement, resulting in 180 rows of data (30 subjects, 6 activities.)

Variable Number |   Variable Name           | Description
----------------|-----------------------    |------------
1               |Subject                    |Number identifing the subject, resulting from a combination of the subject_train and subject_test datasets. There are 30 subjects in total.
2               |Activity                   |The activity the subject participated in (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying)
3               |tBodyAcc-mean()-X          |The mean of the time domain body acceleration signal in the X direction    
4               |tBodyAcc-mean()-Y          |The mean of the time domain body acceleration signal in the Y direction 
5               |tBodyAcc-mean()-Z          |The mean of the time domain body acceleration signal in the Z direction 
6               |tGravityAcc-mean()-X       |The mean of the time domain gravity acceleration signal in the X direction 
7               |tGravityAcc-mean()-Y       |The mean of the time domain gravity acceleration signal in the Y direction  
8               |tGravityAcc-mean()-Z       |The mean of the time domain gravity acceleration signal in the Z direction 
9               |tBodyAccJerk-mean()-X      |The mean of the time domain body linear acceleration jerk signal in the X direction
10              |tBodyAccJerk-mean()-Y      |The mean of the time domain body linear acceleration jerk signal in the Y direction
11              |tBodyAccJerk-mean()-Z      |The mean of the time domain body linear acceleration jerk signal in the Z direction
12              |tBodyGyro-mean()-X         |The mean of the time domain body linear angular velocity signal in the X direction
13              |tBodyGyro-mean()-Y         |The mean of the time domain body linear angular velocity signal in the Y direction
14              |tBodyGyro-mean()-Z         |The mean of the time domain body linear angular velocity signal in the Z direction
15              |tBodyGyroJerk-mean()-X     |The mean of the time domain body linear angular velocity jerk signal in the X direction
16              |tBodyGyroJerk-mean()-Y     |The mean of the time domain body linear angular velocity jerk signal in the Y direction
17              |tBodyGyroJerk-mean()-Z     |The mean of the time domain body linear angular velocity jerk signal in the Z direction
18              |tBodyAccMag-mean()         |The mean of the time domain body acceleration magnitude signal
19              |tGravityAccMag-mean()      |The mean of the time domain gravity acceleration magnitude signal
20              |tBodyAccJerkMag-mean()     |The mean of the time domain body linear acceleration jerk magnitude signal
21              |tBodyGyroMag-mean()        |The mean of the time domain body linear angular velocity magnitude signal
22              |tBodyGyroJerkMag-mean()    |The mean of the time domain body linear angular velocity jerk magnitude signal
23              |fBodyAcc-mean()-X          |The mean of the frequency domain body acceleration signal in the X direction
24              |fBodyAcc-mean()-Y          |The mean of the frequency domain body acceleration signal in the Y direction
25              |fBodyAcc-mean()-Z          |The mean of the frequency domain body acceleration signal in the Z direction
26              |fBodyAccJerk-mean()-X      |The mean of the frequency domain body linear acceleration jerk signal in the X direction
27              |fBodyAccJerk-mean()-Y      |The mean of the frequency domain body linear acceleration jerk signal in the Y direction
28              |fBodyAccJerk-mean()-Z      |The mean of the frequency domain body linear acceleration jerk signal in the Z direction
29              |fBodyGyro-mean()-X         |The mean of the frequency domain body linear angular velocity signal in the X direction
30              |fBodyGyro-mean()-Y         |The mean of the frequency domain body linear angular velocity signal in the Y direction
31              |fBodyGyro-mean()-Z         |The mean of the frequency domain body linear angular velocity signal in the Z direction
32              |fBodyAccMag-mean()         |The mean of the frequency domain body acceleration magnitude signal
33              |fBodyBodyAccJerkMag-mean() |The mean of the frequency domain body linear acceleration jerk magnitude signal
34              |fBodyBodyGyroMag-mean()    |The mean of the frequency domain body linear angular velocity magnitude signal
35              |fBodyBodyGyroJerkMag-mean()|The mean of the frequency domain body linear angular velocity jerk magnitude signal
36              |tBodyAcc-std()-X           |The standard deviation of the time domain body acceleration signal in the X direction
37              |tBodyAcc-std()-Y           |The standard deviation of the time domain body acceleration signal in the Y direction
38              |tBodyAcc-std()-Z           |The standard deviation of the time domain body acceleration signal in the Z direction
39              |tGravityAcc-std()-X        |The standard deviation of the time domain gravity acceleration signal in the X direction 
40              |tGravityAcc-std()-Y        |The standard deviation of the time domain gravity acceleration signal in the Y direction 
41              |tGravityAcc-std()-Z        |The standard deviation of the time domain gravity acceleration signal in the Y direction 
42              |tBodyAccJerk-std()-X       |The standard deviation of the time domain body linear acceleration jerk signal in the X direction
43              |tBodyAccJerk-std()-Y       |The standard deviation of the time domain body linear acceleration jerk signal in the Y direction
44              |tBodyAccJerk-std()-Z       |The standard deviation of the time domain body linear acceleration jerk signal in the Z direction
45              |tBodyGyro-std()-X          |The standard deviation of the time domain body linear angular velocity signal in the X direction
46              |tBodyGyro-std()-Y          |The standard deviation of the time domain body linear angular velocity signal in the Y direction
47              |tBodyGyro-std()-Z          |The standard deviation of the time domain body linear angular velocity signal in the Z direction
48              |tBodyGyroJerk-std()-X      |The standard deviation of the time domain body linear angular velocity jerk signal in the X direction
49              |tBodyGyroJerk-std()-Y      |The standard deviation of the time domain body linear angular velocity jerk signal in the Y direction
50              |tBodyGyroJerk-std()-Z      |The standard deviation of the time domain body linear angular velocity jerk signal in the Z direction
51              |tBodyAccMag-std()          |The standard deviation of the time domain body acceleration magnitude signal
52              |tGravityAccMag-std()       |The standard deviation of the time domain gravity acceleration magnitude signal
53              |tBodyAccJerkMag-std()      |The standard deviation of the time domain body linear acceleration jerk magnitude signal
54              |tBodyGyroMag-std()         |The standard deviation of the time domain body linear angular velocity magnitude signal
55              |tBodyGyroJerkMag-std()     |The standard deviation of the time domain body linear angular velocity jerk magnitude signal
56              |fBodyAcc-std()-X           |The standard deviation of the frequency domain body acceleration signal in the X direction
57              |fBodyAcc-std()-Y           |The standard deviation of the frequency domain body acceleration signal in the Y direction
58              |fBodyAcc-std()-Z           |The standard deviation of the frequency domain body acceleration signal in the Z direction
59              |fBodyAccJerk-std()-X       |The standard deviation of the frequency domain body linear acceleration jerk signal in the X direction
60              |fBodyAccJerk-std()-Y       |The standard deviation of the frequency domain body linear acceleration jerk signal in the Y direction
61              |fBodyAccJerk-std()-Z       |The standard deviation of the frequency domain body linear acceleration jerk signal in the Z direction
62              |fBodyGyro-std()-X          |The standard deviation of the frequency domain body linear angular velocity signal in the X direction
63              |fBodyGyro-std()-Y          |The standard deviation of the frequency domain body linear angular velocity signal in the Y direction
64              |fBodyGyro-std()-Z          |The standard deviation of the frequency domain body linear angular velocity signal in the Z direction
65              |fBodyAccMag-std()          |The standard deviation of the frequency domain body acceleration magnitude signal
66              |fBodyBodyAccJerkMag-std()  |The standard deviation of the frequency domain body linear acceleration jerk magnitude signal
67              |fBodyBodyGyroMag-std()     |The standard deviation of the frequency domain body linear angular velocity magnitude signal
68              |fBodyBodyGyroJerkMag-std() |The standard deviation of the frequency domain body linear angular velocity jerk magnitude signal
