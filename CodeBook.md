Codebook

This tidy dataset was generated from the dataset "
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
"

The zipped dataset is available here
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

All the variables listed in "features.txt" were included in the analysis (n=561). All the data in train and test were combined into one data frame. Labels were added by merging the labels in "activity_labels.txt" by the labels obtained from "y_train.txt" and "y_test.txt". The data was split by activity label and subject number and then the column means were taken from the split data.






