# Summarized dataset based on the 'Human Activity Recognition Using Smartphones Dataset' from UCI

The original dataset is fully documented at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

It consists of several files (organized in multiple folders) in a single ZIP archive file.  
After downloading and unziping the archive one can refer to the README.txt to get a detailed 
explanation of how the original data were generated.

This _CodeBook_ focuses on describing the *summarized dataset* that we generated from the 
original dataset, as per R pre-processing instructions in `run_analysis.R` (refer to README.md 
for more details about how to generate the summarized data).

The summarized dataset consists in a single file - `uci_har_summarized_data.txt` - in table format, 
with a header line and then one line per subject and activity (executed by said subject) covered 
by the original dataset.

The original dataset provided 518 'features' for each 'time window' (a subset of the original 
sensor recording) applicable to a given subject and activity.  We selected a subset of those 
original features (whatever referred to the mean and standard deviation of a particular underlying 
measure across the time window), and then we summarized them across time windows (for each given 
subject and activity) by considering their means.

The variables provided in the summarized dataset (each column in the file) are:

1. subject

Identifier of the subject who carried out the experiment. 
An integer ranging from 1 to 30.

2. activity

Label of the activity performed by the subject. 
Either of: 
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

3. tBodyAcc-mean-X-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body acceleration derived from the accelerometer 
sensor recording on X-axis.

4. tBodyAcc-mean-Y-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body acceleration derived from the accelerometer 
sensor recording on Y-axis.

5. tBodyAcc-mean-Z-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body acceleration derived from the accelerometer 
sensor recording on Z-axis.

6. tBodyAcc-std-X-mean

The mean across sampling time windows (for a given subject and activity) of the 
standard deviation (within each time window) of the body acceleration derived 
from the accelerometer sensor recording on X-axis.

7. tBodyAcc-std-Y-mean

The mean across sampling time windows (for a given subject and activity) of the 
standard deviation (within each time window) of the body acceleration derived 
from the accelerometer sensor recording on Y-axis.

8. tBodyAcc-std-Z-mean

The mean across sampling time windows (for a given subject and activity) of the 
standard deviation (within each time window) of the body acceleration derived 
from the accelerometer sensor recording on Z-axis.

9. tGravityAcc-mean-X-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the gravity acceleration derived from the accelerometer 
sensor recording on X-axis.

10. tGravityAcc-mean-Y-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the gravity acceleration derived from the accelerometer 
sensor recording on Y-axis.

11. tGravityAcc-mean-Z-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the gravity acceleration derived from the accelerometer 
sensor recording on Z-axis.

12. tGravityAcc-std-X-mean

The mean across sampling time windows (for a given subject and activity) of the 
standard deviation (within each time window) of the gravity acceleration derived 
from the accelerometer sensor recording on X-axis.

13. tGravityAcc-std-Y-mean

The mean across sampling time windows (for a given subject and activity) of the 
standard deviation (within each time window) of the gravity acceleration derived 
from the accelerometer sensor recording on Y-axis.

14. tGravityAcc-std-Z-mean

The mean across sampling time windows (for a given subject and activity) of the 
standard deviation (within each time window) of the gravity acceleration derived 
from the accelerometer sensor recording on Z-axis.

15. tBodyAccJerk-mean-X-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body acceleration jerk (a.k.a. time derivative of 
the acceleration) derived from the accelerometer sensor recording on X-axis.

16. tBodyAccJerk-mean-Y-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body acceleration jerk (a.k.a. time derivative of 
the acceleration) derived from the accelerometer sensor recording on Y-axis.

17. tBodyAccJerk-mean-Z-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body acceleration jerk (a.k.a. time derivative of 
the acceleration) derived from the accelerometer sensor recording on Z-axis.

18. tBodyAccJerk-std-X-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the body acceleration jerk (a.k.a. time derivative 
of the acceleration) derived from the accelerometer sensor recording on X-axis.

19. tBodyAccJerk-std-Y-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the body acceleration jerk (a.k.a. time derivative 
of the acceleration) derived from the accelerometer sensor recording on Y-axis.

20. tBodyAccJerk-std-Z-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the body acceleration jerk (a.k.a. time derivative 
of the acceleration) derived from the accelerometer sensor recording on Z-axis.

21. tBodyGyro-mean-X-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body angular velocity derived from the gyroscope 
sensor recording on X-axis.

22. tBodyGyro-mean-Y-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body angular velocity derived from the gyroscope 
sensor recording on Y-axis.

23. tBodyGyro-mean-Z-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body angular velocity derived from the gyroscope 
sensor recording on Z-axis.

24. tBodyGyro-std-X-mean

The mean across sampling time windows (for a given subject and activity) of the 
standard deviation (within each time window) of the body angular velocity derived 
from the gyroscope sensor recording on X-axis.

25. tBodyGyro-std-Y-mean

The mean across sampling time windows (for a given subject and activity) of the 
standard deviation (within each time window) of the body angular velocity derived 
from the gyroscope sensor recording on Y-axis.

26. tBodyGyro-std-Z-mean

The mean across sampling time windows (for a given subject and activity) of the 
standard deviation (within each time window) of the body angular velocity derived 
from the gyroscope sensor recording on Z-axis.

27. tBodyGyroJerk-mean-X-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body angular velocity jerk (a.k.a. time derivative 
of the velocity) derived from the gyroscope sensor recording on X-axis.

28. tBodyGyroJerk-mean-Y-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body angular velocity jerk (a.k.a. time derivative 
of the velocity) derived from the gyroscope sensor recording on Y-axis.

29. tBodyGyroJerk-mean-Z-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the body angular velocity jerk (a.k.a. time derivative 
of the velocity) derived from the gyroscope sensor recording on Z-axis.

30. tBodyGyroJerk-std-X-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the body angular velocity jerk (a.k.a. time derivative 
of the velocity) derived from the gyroscope sensor recording on X-axis.

31. tBodyGyroJerk-std-Y-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the body angular velocity jerk (a.k.a. time derivative 
of the velocity) derived from the gyroscope sensor recording on Y-axis.

32. tBodyGyroJerk-std-Z-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the body angular velocity jerk (a.k.a. time derivative 
of the velocity) derived from the gyroscope sensor recording on Z-axis.

33. fBodyAcc-mean-X-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the Fast Fourier Transform (FFT) of the body acceleration 
derived from the accelerometer sensor recording on X-axis.

34. fBodyAcc-mean-Y-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the Fast Fourier Transform (FFT) of the body acceleration 
derived from the accelerometer sensor recording on Y-axis.

35. fBodyAcc-mean-Z-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the Fast Fourier Transform (FFT) of the body acceleration 
derived from the accelerometer sensor recording on Z-axis.

36. fBodyAcc-std-X-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the Fast Fourier Transform (FFT) of the body 
acceleration derived from the accelerometer sensor recording on X-axis.

37. fBodyAcc-std-Y-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the Fast Fourier Transform (FFT) of the body 
acceleration derived from the accelerometer sensor recording on Y-axis.

38. fBodyAcc-std-Z-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the Fast Fourier Transform (FFT) of the body 
acceleration derived from the accelerometer sensor recording on Z-axis.

39. fBodyAccJerk-mean-X-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the Fast Fourier Transform (FFT) of the body acceleration 
jerk (a.k.a. time derivative of the acceleration) derived from the accelerometer 
sensor recording on X-axis.

40. fBodyAccJerk-mean-Y-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the Fast Fourier Transform (FFT) of the body acceleration 
jerk (a.k.a. time derivative of the acceleration) derived from the accelerometer 
sensor recording on Y-axis.

41. fBodyAccJerk-mean-Z-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the Fast Fourier Transform (FFT) of the body acceleration 
jerk (a.k.a. time derivative of the acceleration) derived from the accelerometer 
sensor recording on Z-axis.

42. fBodyAccJerk-std-X-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the Fast Fourier Transform (FFT) of the body 
acceleration jerk (a.k.a. time derivative of the acceleration) derived from the accelerometer 
sensor recording on X-axis.

43. fBodyAccJerk-std-Y-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the Fast Fourier Transform (FFT) of the body 
acceleration jerk (a.k.a. time derivative of the acceleration) derived from the accelerometer 
sensor recording on Y-axis.

44. fBodyAccJerk-std-Z-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the Fast Fourier Transform (FFT) of the body 
acceleration jerk (a.k.a. time derivative of the acceleration) derived from the accelerometer 
sensor recording on Z-axis.

45. fBodyGyro-mean-X-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the Fast Fourier Transform (FFT) of the body angular 
velocity derived from the gyroscope sensor recording on X-axis.

46. fBodyGyro-mean-Y-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the Fast Fourier Transform (FFT) of the body angular 
velocity derived from the gyroscope sensor recording on Y-axis.

47. fBodyGyro-mean-Z-mean

The mean across sampling time windows (for a given subject and activity) of the mean 
(within each time window) of the Fast Fourier Transform (FFT) of the body angular 
velocity derived from the gyroscope sensor recording on Z-axis.

48. fBodyGyro-std-X-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the Fast Fourier Transform (FFT) of the body angular 
velocity derived from the gyroscope sensor recording on X-axis.

49. fBodyGyro-std-Y-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the Fast Fourier Transform (FFT) of the body angular 
velocity derived from the gyroscope sensor recording on Y-axis.

50. fBodyGyro-std-Z-mean

The mean across sampling time windows (for a given subject and activity) of the standard 
deviation (within each time window) of the Fast Fourier Transform (FFT) of the body angular 
velocity derived from the gyroscope sensor recording on Z-axis.
