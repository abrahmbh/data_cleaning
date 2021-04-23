# data_cleaning

Code design
1. loading libraries
2. reading the columns names for feature, which will helpful later to filter data
3. reading and merging subject id from test and train
4. reading and merging activity label from test and train
5. reading and merging the features datat from test and train
6. renaming the columns feature, so it would helpful to find appropriate data
7. filtering out data based on key word "mean()"
8. filtering out data based on key word "std()"
9. this vector will be helpful for naming colnames
10. making the semi-final data set
11. merging mean and standard data
12. finally, giving descriptive labels to activity 
13. filtering data based on subject id and activity
14. The average of each variable for each activity and subject (e.g. group by activity, subject and then take the average) .taking the mean of everything except first 2 cols
15. changing col names using the colnames vector
