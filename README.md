# GettingCleaningDataProject
## For the Getting and Cleaning Data course project.

This repository contains run_analysis.R, a script that contains the function run_analysis(). This function:

1. Combines the test and training set into a single data frame, adding columns for the subject and activity
2. Selects only the columns containing the mean and standard deviation for each measurement (columns with the meanFreq() of a measure are excluded)
3. Renames the activity variables with descriptive names (WALKING, SITTING, etc.)
4. From this tidy data set, calculates the average of each measure for each subject and activity combination
5. This data set, containing the subject, activity, and measure averages, is returned

A full description of the variables can be found in CodeBook.md.

To run properly, the script must be located in the "UCI HAR Dataset" folder, which must also contain:

* 'test' and 'training' folders, containing ([t] = 'test' or 'train'):
	* subject_[t].txt: Identifies the subject that performed the activity.
	* X_[t].txt: Values of the measurements taken during the duration of the activity.
	* y_[t].txt: Identifies the activity that the subject performed.
* features.txt: List of all measurements made.
* activity_labels.txt: Assigns each activity name to the number used in the data set.

###About the data:

The data is from the Human Activity Recognition Using Smartphones Data Set ([link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)), with the description *database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors*.

