# codebook : Average of movement metrics related to human activity

This data is based on the Human Activity Recognition Using Smartphones Dataset (Version 1.0)

Reference: 
> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
<br>[Smartlab](http://www.smartlab.ws)


| variable                     | description |
| ---------------------------- | ----------- |
| subject                      | a volunteer performing the tests to register the movement for different activities |
| activity                     | metrics are registered during specific activities. Possible values are: walking, walkingupstairs, walkingdownstairs, sitting, standing, laying |
| tbodyaccmeanx<br>tbodyaccmeany<br>tbodyaccmeanz | average of body acceleration variable (time based, x/y/z-axis) |
| tbodyaccstdx<br>tbodyaccstdy<br>tbodyaccstdz    | standard deviation of body acceleration variable (time based, x/y/z-axis) |
| tgravityaccmeanx<br>tgravityaccmeany<br>tgravityaccmeanz | average of gravitational acceleration variable (time based, x/y/z-axis) |
| tgravityaccstdx<br>tgravityaccstdy<br>tgravityaccstdz | standard deviation of gravitational acceleration variable (time based, x/y/z-axis) |
| tbodyaccjerkmeanx<br>tbodyaccjerkmeany<br>tbodyaccjerkmeanz | average of body acceleration variable on jerk signals (time based, x/y/z-axis) |
| tbodyaccjerkstdx<br>tbodyaccjerkstdy<br>tbodyaccjerkstdz | standard deviation of body acceleration variable on jerk signals (time based, x/y/z-axis) |
| tbodygyromeanx<br>tbodygyromeany<br>tbodygyromeanz | average of body angular velocity variable using a gyroscope (time based, x/y/z-axis) |
| tbodygyrostdx<br>tbodygyrostdy<br>tbodygyrostdz | standard deviation of body  angular velocity variable using a gyroscope (time based, x/y/z-axis) |
| tbodygyrojerkmeanx<br>tbodygyrojerkmeany<br>tbodygyrojerkmeanz | average of body angular velocity variable using a gyroscope on jerk signals(time based, x/y/z-axis) |
| tbodygyrojerkstdx<br>tbodygyrojerkstdy<br>tbodygyrojerkstdz | standard deviation of body  angular velocity variable using a gyroscope on jerk signals (time based, x/y/z-axis) |
| tbodyaccmagmean              | average of the acceleration magnitude of the three-dimensional signals, calculated using the Euclidean norm (time based) |
| tbodyaccmagstd               | standard deviation of the acceleration magnitude of the three-dimensional signals, calculated using the Euclidean norm (time based) |
| tgravityaccmagmean           | average of gravitational acceleration magnitude (time based) |
| tgravityaccmagstd            | standard deviation of gravitational acceleration magnitude (time based) |
| tbodyaccjerkmagmean          | average of the acceleration magnitude on jerk signals (time based) |
| tbodyaccjerkmagstd           | standard deviation of the acceleration magnitude jerk signals (time based) |
| tbodygyromagmean             | average of body angular velocity magnitude (time based) |
| tbodygyromagstd              | standard deviation of body angular velocity magnitude (time based) |
| tbodygyrojerkmagmean         | average of body angular velocity magnitude on jerk signals (time based) |
| tbodygyrojerkmagstd          | standard deviation of body angular velocity magnitude on jerk signals (time based) |
| fbodyaccmeanx<br><fbodyaccmeanybr>fbodyaccmeanz | average of body acceleration variable (frequency based, x/y/z-axis) |
| fbodyaccstdx<br>fbodyaccstdy<br>fbodyaccstdz | standard deviation of body acceleration variable (frequency based, x/y/z-axis) |
| fbodyaccmeanfreqx<br>fbodyaccmeanfreqy<br>fbodyaccmeanfreqz | weighted average of the frequency components of body acceleration variable |
| fbodyaccjerkmeanx<br>fbodyaccjerkmeany<br>fbodyaccjerkmeanz | average of body acceleration variable on jerk signals (frequency based, x/y/z-axis) |
| fbodyaccjerkstdx<br>fbodyaccjerkstdy<br>fbodyaccjerkstdz | standard deviation of body acceleration variable on jerk signals (frequency based, x/y/z-axis) |
| fbodyaccjerkmeanfreqx<br>fbodyaccjerkmeanfreqy<br>fbodyaccjerkmeanfreqz | weighted average of the frequency components of body acceleration variable on jerk signals |
| fbodygyromeanx<br>fbodygyromeany<br>fbodygyromeanz | average of body angular velocity variable using a gyroscope (frequency based, x/y/z-axis) |
| fbodygyrostdx<br>fbodygyrostdy<br>fbodygyrostdz | standard deviation of body  angular velocity variable using a gyroscope (frequency based, x/y/z-axis) |
| fbodygyromeanfreqx<br>fbodygyromeanfreqy<br>fbodygyromeanfreqz | weighted average of the frequency components of body angular velocity |
| fbodyaccmagmean              | average of the acceleration magnitude of the three-dimensional signals, calculated using the Euclidean norm (frequency based) |
| fbodyaccmagstd               | standard deviation of the acceleration magnitude of the three-dimensional signals, calculated using the Euclidean norm (frequency based) |
| fbodyaccmagmeanfreq          | weighted average of the frequency components of the acceleration magnitude |
| fbodybodyaccjerkmagmean      | average of the acceleration magnitude on jerk signals (frequency based) |
| fbodybodyaccjerkmagstd       | standard deviation of the acceleration magnitude jerk signals (frequency based) |
| fbodybodyaccjerkmagmeanfreq  | weighted average of the frequency components of the acceleration magnitude on jerk signals |
| fbodybodygyromagmean         | average of body angular velocity magnitude (frequency based) |
| fbodybodygyromagstd          | standard deviation of body angular velocity magnitude (frequency based) |
| fbodybodygyromagmeanfreq     | weighted average of the frequency components of body angular velocity magnitude |
| fbodybodygyrojerkmagmean     | average of body angular velocity magnitude on jerk signals (frequency based) |
| fbodybodygyrojerkmagstd      | standard deviation of body angular velocity magnitude on jerk signals (frequency based) |
| fbodybodygyrojerkmagmeanfreq | weighted average of the frequency components of body angular velocity magnitude on jerk signals |
