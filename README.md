# getting-and-cleaning-data-assignment

## Purpose
Since the rise of smartwatches/-phones and advanced fitness trackers, we are able to measure our movement when we perform certain activities. based on this data, we can distill some information on movement metrics depending on the activity.

Based on the Human activity Recognition dataset, we calculate the average of each of these metrics for a particular person doing one of the six activities. 
The activities that are part of the dataset are: walking, walking upstairs, walking downstairs, sitting, standing and laying down.

## Source
This assignment is based on the following dataset: Human Activity Recognition Using Smartphones Dataset
Reference: 
> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
<br>[Smartlab](http://www.smartlab.ws)

The original dataset can be downloaded from the following location:
<br>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Running the script
Make sure you have downloaded the zip file of the original dataset referenced in the source topic.
Once downloaded, unzip the file in your working directory. You should have a directory named `UCI HAR Dataset`.

Next, download the script file, part of this repository and save the file in your working directory a well.
The script requires the data.table library; in case it isn't installed on your system, it will automatically install the necessary package. 

When you run the script, it will generate the `finalTidyDataset.txt` file.

## The dataset
The dataset provides the average value of all the datapoints from the each movement parameter per person and the activity he performed. 

For a full overview of the file, please have a look at the [Codebook](https://github.com/johanmarien/getting-and-cleaning-data-assignment/blob/master/Codebook.md) file.
