# Install the package "data.table" if it isn't installed yet
if("data.table" %in% rownames(installed.packages()) == FALSE) {
    install.packages("data.table")
}

# ------------------
# Loading data files
# ------------------
library (data.table)

# Load subject train and test files
subjectTrain <- fread(
                    input = "UCI HAR Dataset/train/subject_train.txt",
                    header = FALSE, 
                    col.names = "subject", 
                    colClasses = "integer")
subjectTest <- fread(
    input = "UCI HAR Dataset/test/subject_test.txt",
    header = FALSE, 
    col.names = "subject", 
    colClasses = "integer")

# Load activity train and test files (y files)
yTrain <- fread(
    input = "UCI HAR Dataset/train/y_train.txt",
    header = FALSE, 
    col.names = "activitycode", 
    colClasses = "numeric")
yTest <- fread(
    input = "UCI HAR Dataset/test/y_test.txt",
    header = FALSE, 
    col.names = "activitycode", 
    colClasses = "numeric")

# load activity descriptions
activities <- fread(
    input = "UCI HAR Dataset/activity_labels.txt",
    header = FALSE,
    col.names = c("activitycode","activity"),
    colClasses = c("numeric", "character"))
activities[,activity:= tolower(gsub("_", "", activities$activity))]

yTrain <- merge(yTrain, activities, by="activitycode", all=TRUE)
yTest <- merge(yTest, activities, by="activitycode", all=TRUE)

yTrain[, activitycode := NULL]
yTest[, activitycode := NULL]

# Get the list of column numbers and their description of the features 
# (x_test.txt and x_train.txt files)
features <- fread(
    input = "UCI HAR Dataset/features.txt",
    header = FALSE,
    col.names = c("columnnumber","description"))

# Only select the columns we need to merge containing mean or std
# The regex could lead to false positives, but is ok for the purpose of 
# this excercise
filteredFeatures <- features[grepl('mean|std', features$description),]
filteredFeatures[, description := tolower(
                                    gsub("[[:punct:]]", "",
                                         filteredFeatures$description))]

xCols <- rep("NULL", 561)
xCols[filteredFeatures$columnnumber] <- "numeric"

# Load xTrain and xTest files
xTrain <- fread(
    input = "UCI HAR Dataset/train/X_train.txt",
    header = FALSE, 
    colClasses = xCols,
    col.names = filteredFeatures$description)
xTest <- fread(
    input = "UCI HAR Dataset/test/X_test.txt",
    header = FALSE, 
    colClasses = xCols,
    col.names=filteredFeatures$description)

# ----------
# Merge data
# ----------

# Combine test data
testData <- subjectTest[, "activity":=yTest$activity]
testData[, filteredFeatures$description := xTest]

# Combine train data
trainData <- subjectTrain[, activity:=yTrain$activity]
trainData[, filteredFeatures$description := xTrain]

# Merge Test and train data in one dataset
fullDataset <- rbindlist(list(testData, trainData))

# not requested in assignment: 
# write.table(fullDataset, "fullDataset.txt", quote = FALSE,row.names = FALSE)

# ------------------------------------------------------
# Average of each feature for every activity per subject 
# ------------------------------------------------------

# sort on subject/activity
setkey(fullDataset,subject,activity)

# get the average for each subject/activity combination
finalTidyDataset <- fullDataset[, lapply(.SD, mean), by=.(subject, activity)] 

# create file
write.table(finalTidyDataset, "finalTidyDataset.txt", quote = FALSE,row.names = FALSE, col.names = FALSE)

# data.table cheatsheet link
# https://s3.amazonaws.com/assets.datacamp.com/img/blog/data+table+cheat+sheet.pdf
