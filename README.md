# Course Project

## Project Description
The purpose of this project is to combine several datasets from the UCI Machine Learning Repository into one tidy dataset using R. The original data is built from "the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors." For more information regarding the original experiments, please visit: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Original data
The data was obtained from the above website as a zipfile. 

## Creating the tidy data set
The R code in this repo assumes that all the necessary files for analysis (X_train.txt, features.txt, y_train.txt, subject_train.txt, X_test.txt, y_text.txt, subject_test.txt). Before running this code, please make sure that your working directory is set and contains the above files.

The code first uploads and stores the X_train dataset and the features text file, which is the list of variables. The code then replaces the variable titles in the X_train dataset with the variable list as provided by UCI.

Next, the code uploads and stores the activity train dataset and recodes the variables in this dataset to their respective activity name:
1 = WALKING 
2 = WALKING_UPSTAIRS 
3 = WALKING_DOWNSTAIRS 
4 = SITTING 
5 = STANDING 
6 = LAYING 

The code then renames the variable for the activities to "Activity" and combines the activity dataset and the train dataset. Afterward, the code uploads and stores the subject train dataset and renames the variable for the subject to "Subject". 

Now the code combines the subject data and the training data, resulting in the main traindata dataset which contains the subject, activity, and all the original train data.

The above steps are repeated for the test files. Once these files are processed and combined, the test and train datasets are combined into one dataset using rbind, since the order of variables is exactly the same.

## Creating the tidy data set with only mean() and std()
The code now extracts only the measurements on the mean and standard deviation. The code accomplishes this by created a master list of all columns containing mean() or std() by using grep and setting fixed = TRUE. The data is then subset by this column list to produce a dataset with only the measurements containing mean() or std().

##Creating a second dataset with the average of each variable for each activity and subject
This last task is accomplished using the aggregate function, which calculates the mean for the 3-68 variables (since variable 1 is the subject and 2 is the activity) by the subject and activity variables.

The last bit of code renames the first and second columns to "Subject" and "Activity", respectively.
