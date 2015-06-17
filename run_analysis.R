##This R script assumes that all necessary files are located in the working directory.
##If you have not done so, please set the working directory to the location of all the files
##needed for this analysis: X_train.txt, features.txt, y_train.txt, subject_train.txt,
##X_test.txt, y_text.txt, subject_test.txt

##Upload and store the train dataset
trainx <- read.table("X_train.txt")
features <- read.table("features.txt")

##Replace the variable titles with the values from the features file
names(trainx) <- features[,2]

##Upload and store the activity train dataset
trainactivity <- read.table("y_train.txt")

##Use descriptive activity names to name the activities rather than numbers; rename the
##variable so it's more descriptive
trainactivity[trainactivity == "1"] <- "WALKING"
trainactivity[trainactivity == "2"] <- "WALKING_UPSTAIRS"
trainactivity[trainactivity == "3"] <- "WALKING_DOWNSTAIRS"
trainactivity[trainactivity == "4"] <- "SITTING"
trainactivity[trainactivity == "5"] <- "STANDING"
trainactivity[trainactivity == "6"] <- "LAYING"

names(trainactivity) <- "Activity"

##binds the activity data column to the left of the train dataset

trainx <- cbind(trainactivity, trainx)

##Upload and store the subject dataset
subjecttrain <- read.table("subject_train.txt")
names(subjecttrain) <- "Subject"

##Combine the subject data and the training data
traindata <- cbind(subjecttrain, trainx)

##Now the above steps are repeated for the test data

##Upload and store the test dataset
testx <- read.table("X_test.txt")

##Replace the variable titles with the values from the features file
names(testx) <- features[,2]

##Upload and store the activity test dataset
testactivity <- read.table("y_test.txt")

##Use descriptive activity names to name the activities rather than numbers; rename the
##variable so it's more descriptive
testactivity[testactivity == "1"] <- "WALKING"
testactivity[testactivity == "2"] <- "WALKING_UPSTAIRS"
testactivity[testactivity == "3"] <- "WALKING_DOWNSTAIRS"
testactivity[testactivity == "4"] <- "SITTING"
testactivity[testactivity == "5"] <- "STANDING"
testactivity[testactivity == "6"] <- "LAYING"

names(testactivity) <- "Activity"

##binds the test activity data column to the left of the test dataset
testx <- cbind(testactivity, testx)

##Upload and store the subject dataset
subjecttest <- read.table("subject_test.txt")
names(subjecttest) <- "Subject"

##Combine the test subject data and the test data
testdata <- cbind(subjecttest, testx)

##Combine the train and test datasets
alldata <- rbind(traindata, testdata)

##This section of the code creates a vector containing the columns that we wish to subset
##which are columns containing mean() or std()

##Put all of the column names in one vector
namedata <- names(alldata)

##create a vector containing all the columns containing mean(). fixed = TRUe ensures only 
##columns with mean() are listed

meancols <- grep("mean()", features[,2], fixed = TRUE)

##create a vector containing all the columns containing std(). fixed = TRUe ensures only 
##columns with std() are listed

stdcols <- grep("std()", features[,2], fixed = TRUE)

##combines the above two vectors with the first (subject) and second (activity) column
## for a total list of all the columns we want

columns <- c(1, 2, meancols, stdcols)

##produces a dataset with only the subject, activity, and columns that measure the 
##mean and std of the different measurements

subdata <- alldata[,columns]

##takes the dataset created above and calculates the average for each subject and
##measurement, resulting in a second tidy dataset

aggdata <- aggregate(subdata[3:68], by=list(subdata$Subject, subdata$Activity), FUN=mean)

##this part is a bit of a step backwards, but since aggregate does not carry over the
##variable names for subject and activity, we must now rename these variables for the final
##result

setnames(aggdata, old = c("Group.1", "Group.2"), new = c("Subject", "Activity"))
