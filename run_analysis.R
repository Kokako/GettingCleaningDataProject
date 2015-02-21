run_analysis <- function(){

## Define file names
testFile <- "test/X_test.txt"
testSubjectFile <- "test/subject_test.txt"
testActivityFile <- "test/y_test.txt"

trainFile <- "train/X_train.txt"
trainSubjectFile <- "train/subject_train.txt"
trainActivityFile <- "train/y_train.txt"

featureFile <- "features.txt"
activityFile <- "activity_labels.txt"

## Read in data
testData <- read.table(testFile, sep = "")
testsubjectLabels <- read.table(testSubjectFile, sep = "")
testactivityLabels <- read.table(testActivityFile, sep = "")

trainData <- read.table(trainFile, sep = "")
trainsubjectLabels <- read.table(trainSubjectFile, sep = "")
trainactivityLabels <- read.table(trainActivityFile, sep = "")

variableLabels <- read.table(featureFile, sep = "", stringsAsFactors = FALSE)
activityLabels <- read.table(activityFile, sep = "", stringsAsFactors = FALSE)

## 1. Combine data
testData <- cbind(testsubjectLabels, testactivityLabels, testData)
trainData <- cbind(trainsubjectLabels, trainactivityLabels, trainData)
dataAll <- rbind(testData, trainData)

## 4. Label data columns
varNames <- variableLabels$V2
colnames(dataAll) <- c("Subject","Activity",varNames)

## Find mean() and std() columns
meanCols <- grep("mean()", names(dataAll))
stdCols <- grep("std()", names(dataAll))
msdCols <- sort(c(meanCols,stdCols))

## Remove the meanFreq() columns from list
meanFreq <- grep("meanFreq()", names(dataAll))
msdCols <- msdCols[! msdCols %in% meanFreq]

## 2. Extract mean and std for each measurement
dataAll <- dataAll[,c(1,2,msdCols)]

## 3. Use descriptive names for the activities
dataAll$Subject <- factor(dataAll$Subject)
dataAll$Activity <- factor(dataAll$Activity)
actNames <- activityLabels$V2
levels(dataAll$Activity) <- actNames

## Sort for style points
dataAll <- dataAll[order(dataAll$Subject, dataAll$Activity),]

## At this point, "dataAll" is the first tidy data set

## 5. Find average of the variables for each subject and activity
dataMean <- aggregate(dataAll[,-(1:2)], by=list(dataAll$Subject,dataAll$Activity), FUN=mean)
names(dataMean)[1:2] <- c("Subject","Activity")

return(dataMean)

}



