## loading libraries
library(dplyr)

## setting the directory. 
sub_test  <- "UCI HAR Dataset/test/subject_test.txt"
sub_train <- "UCI HAR Dataset/train/subject_train.txt"

feature_test  <- "UCI HAR Dataset/test/X_test.txt"
feature_train <- "UCI HAR Dataset/train/X_train.txt"

act_test  <- "UCI HAR Dataset/test/y_test.txt"
act_train <- "UCI HAR Dataset/train/y_train.txt"

## reading the columns names for feature, which will helpful later to filter data
feature_list <- read.delim("UCI HAR Dataset/features.txt", header = FALSE,
                           sep = "")[, "V2"]

## reading and merging subject id from test and train
subject_id <- rbind(read.delim(sub_test, header = FALSE, sep = ""), 
                    read.delim(sub_train, header = FALSE, sep = ""))[, "V1"]

## reading and merging activity label from test and train
activity_label <- rbind(read.delim(act_test, header = FALSE, sep = ""),
                        read.delim(act_train, header = FALSE, sep = ""))[, "V1"]

## reading and merging the features datat from test and train
features <- rbind(read.delim(feature_test, header = FALSE, sep = ""),
                 read.delim(feature_train, header = FALSE, sep = ""))

## renaming the columns feature, so it would helpful to find appropriate data
names(features) <- feature_list

## filtering out data based on key word "mean()"
mean_data <- select(features, contains("mean()"))

## filtering out data based on key word "std()"
std_data <- select(features, contains("std()"))

## this vector will be helpful for naming colnames
col_names <- c(names(mean_data), names(std_data))

## making the semi-final data set
semi_data <- data.frame(subject.id = subject_id, activity = activity_label)

## merging mean and standard data
semi_data <- cbind(semi_data, mean_data)
semi_data <- cbind(semi_data, std_data)

## finally, giving descriptive labels to activity 
semi_data <- mutate(semi_data, activity = recode(activity, '1' = "walking",
                                                           '2' = "walking.upstairs", 
                                                           '3' = "walking.downstairs",
                                                           '4' = "sitting",
                                                           '5' = "standing",
                                                           '6' = "laying"))

## activity names
act_name <- c("walking", "walking.upstairs", "walking.downstairs", "sitting",
              "standing", "laying")

## filtering data based on subject id and activity
temp_data <- data.frame()
for(i in 1:30){
    for(j in act_name){
        ## The average of each variable for each activity and subject 
        ## (e.g. group by activity, subject and then take the average)
        ## taking the mean of everything except first 2 cols
        temp_data <- rbind(temp_data,colMeans(filter(semi_data, 
                                                    subject.id == i, 
                                                    activity == j)[,-(1:2)]))
    }
}
## changing col names using the colnames vector
names(temp_data) <- col_names

## final data
final_data <- data.frame(subject.id = 1:30, activity = act_name)
final_data <- cbind(final_data, temp_data)

## writing the final data to csv
## write.csv(final_data, "clean_data.csv") ## uncomment for csv format data output
write.table(final_data, "clean_data.txt", row.names = FALSE)


## cleaning up to free memory
rm(list = ls())