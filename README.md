# GettingCleaningDataProject
## For the Getting and Cleaning Data course project.

This repository contains run_analysis.R, a script that contains the funtion run_analysis(). This function:

1. Combines the test and training set into a single data frame, adding columns for the subject and activity
2. Selects only the columns containing the mean and standard deviation for each measurement (columns with the meanFreq() of a measure are excluded)
3. Renames the activity variables with descriptive names (WALKING, SITTING, etc.)
4. From this tidy data set, calculates the average of each measure for each subject and activity combination
5. This data set, containing the subject, activity, and measure averages, is returned

A full description of the variables can be found in CodeBook.md.

To run properly, the script must be located in the "UCI HAR Dataset" folder, which also must contain:

* 'test' and 'training' folders, containing (* = 'test' or 'train'):
** 'subject_*.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
** 'X_*.txt': Data set.
** 'y_*.txt': Data labels.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.

##About the data:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

From [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


