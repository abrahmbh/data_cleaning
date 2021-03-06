1. We Merge the training and the test sets to create one data set.
2. Then we Extract only the measurements on the mean and standard deviation for each measurement. 
3. Finally from the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

=================================================================================================================================================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

=================================================================================================================================================================================

Following are the varialbes for which we found mean for each subject and activity:
1. "tBodyAcc-mean()-X"           
2. "tBodyAcc-mean()-Y"           
3. "tBodyAcc-mean()-Z"           
4. "tGravityAcc-mean()-X"       
5. "tGravityAcc-mean()-Y"        
6. "tGravityAcc-mean()-Z"
7. "tBodyAccJerk-mean()-X"       
8. "tBodyAccJerk-mean()-Y"      
9. "tBodyAccJerk-mean()-Z"       
10. "tBodyGyro-mean()-X" 
11. "tBodyGyro-mean()-Y"          
12. "tBodyGyro-mean()-Z" 
13. "tBodyGyroJerk-mean()-X"      
14. "tBodyGyroJerk-mean()-Y"        
15. "tBodyGyroJerk-mean()-Z"      
16. "tBodyAccMag-mean()"  
17. "tGravityAccMag-mean()"       
18. "tBodyAccJerkMag-mean()"  
19. "tBodyGyroMag-mean()"         
20. "tBodyGyroJerkMag-mean()" 
21. "fBodyAcc-mean()-X"           
22. "fBodyAcc-mean()-Y"  
23. "fBodyAcc-mean()-Z"           
24. "fBodyAccJerk-mean()-X"      
25. "fBodyAccJerk-mean()-Y"       
26. "fBodyAccJerk-mean()-Z"  
27. "fBodyGyro-mean()-X"          
28. "fBodyGyro-mean()-Y"   
29. "fBodyGyro-mean()-Z"
30. "fBodyAccMag-mean()"         
31. "fBodyBodyAccJerkMag-mean()"  
32. "fBodyBodyGyroMag-mean()" 
33. "fBodyBodyGyroJerkMag-mean()" 
34. "tBodyAcc-std()-X"  
35. "tBodyAcc-std()-Y"            
36. "tBodyAcc-std()-Z"  
37. "tGravityAcc-std()-X"         
38. "tGravityAcc-std()-Y"      
39. "tGravityAcc-std()-Z"         
40. "tBodyAccJerk-std()-X"  
41. "tBodyAccJerk-std()-Y"        
42. "tBodyAccJerk-std()-Z" 
43. "tBodyGyro-std()-X"           
44. "tBodyGyro-std()-Y" 
45. "tBodyGyro-std()-Z"           
46. "tBodyGyroJerk-std()-X"   
47. "tBodyGyroJerk-std()-Y"       
48. "tBodyGyroJerk-std()-Z"   
49. "tBodyAccMag-std()"           
50. "tGravityAccMag-std()" 
51. "tBodyAccJerkMag-std()"       
52. "tBodyGyroMag-std()" 
53. "tBodyGyroJerkMag-std()"      
54. "fBodyAcc-std()-X"    
55. "fBodyAcc-std()-Y"           
56. "fBodyAcc-std()-Z"   
57. "fBodyAccJerk-std()-X"        
58. "fBodyAccJerk-std()-Y"     
59. "fBodyAccJerk-std()-Z"        
60. "fBodyGyro-std()-X"   
61. "fBodyGyro-std()-Y"           
62. "fBodyGyro-std()-Z"        
63. "fBodyAccMag-std()"           
64. "fBodyBodyAccJerkMag-std()"    
65. "fBodyBodyGyroMag-std()"      
66. "fBodyBodyGyroJerkMag-std()"
 





