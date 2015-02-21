# GettingCleaningDataProject
## For the Getting and Cleaning Data course project.

This repository contains run_analysis.R, a script that contains the funtion run_analysis(). This function:

1. Combines the test and training set into a single data frame, adding columns for the subject and activity
2. Selects only the columns containing the mean and standard deviation for each measurement (columns with the meanFreq() of a measure are excluded)
3. Renames the activity variables with descriptive names (WALKING, SITTING, etc.)
4. From this tidy data set, calculates the average of each measure for each subject and activity combination
5. This data set, containing the subject, activity, and measure averages, is returned

A full description of the variables can be found in CodeBook.md.

To run properly, the script must be located in the "UCI HAR Dataset" folder, which must also contain:

* 'test' and 'training' folders, containing ([t] = 'test' or 'train'):
** subject_[t].txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
** X_[t].txt: Data set.
** y_[t].txt: Data labels.
* features.txt: List of all features.
* activity_labels.txt: Links the class labels with their activity name.

##About the data:

The data is from the Human Activity Recognition Using Smartphones Data Set ([link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)), with the abstract *Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors*.

