## `run_analysis.R` Script Explanation

The `run_analysis.R` script performs data cleaning as follows:

1. **Loading the data into the following variables:**
   - `activity_name` (6 rows, 2 columns): Description of activities and their codes
   - `x_label` (561 rows, 2 columns): Variable names for features collected from accelerometer and gyroscope
   - `subject_test` (2947 rows, 1 column): ID of test subjects
   - `subject_train` (7352 rows, 1 column): ID of train subjects
   - `x_test` (2947 rows, 561 columns): Test data for `x_label`
   - `x_train` (7352 rows, 561 columns): Train data for `x_label`
   - `y_test` (2947 rows, 1 column): Test data of activity using code labels (1 to 6)
   - `y_train` (7352 rows, 1 column): Train data of activity using code labels (1 to 6)

2. **Changing Variable Names**
   - Change variable names to enhance their understandability after set merging
   - Rename the 'x_test' and 'x_train' variables to 'x_label'
   - Rename the 'y_test' and 'y_train' variables to 'activity'
   - Rename the 'subject_test' and 'subject_train' variables to 'test' and 'train' respectively

3. **Changing Variable Types (Converting the 'activity' variable into a factor variable with understandable labels)**
   - `x_train$activity`, `y_train$activity`: Factor with 6 labels (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

4. **Extracting Specified Variables**
   - `x_test` (2947 rows, 561 columns) -> `x_test2` (2947 rows, 66 columns)
   - `x_train` (7352 rows, 561 columns) -> `x_train2` (7352 rows, 66 columns)

5. **Merging Training and Test Data into a Single Set, and Adding an Additional Variable to Differentiate Between Them**
   - `merged_train` (7352 rows, 68 columns): Merging `subject_train`, `x_train2`, `y_train`
   - `merged_test` (7352 rows, 68 columns): Merging `subject_test`, `x_test2`, `y_test`
   - `first_set` (10299 rows, 69 columns): Merging `merged_train`, `merged_test`, and adding an additional variable (`set`, value: train, test)

6. **Making Variable Names Understandable**
   - Change `t` to `time` and `f` to `frequency`
   - Change `Acc` to `accelerometer` and `Gyro` to `gyroscope`
   - Change `-` to `_`
   - Lowercase names and insert `_` to separate words

7. **Summarizing Data Using Means Grouped by Subjects and Activities**
   - Create `second_set` to summarize `first_set` using means grouped by subjects and activities

8. **Saving Data**
   - Save `first_set` as "1st_data.txt": Merging test and train data set which only contains `std()` and `mean()`
   - Save `second_set` as "2nd_data.txt": Summarized first data set

##Data Summary-first_set

| variable                                        | mean  | min | max |
|-------------------------------------------------|-------|-----|-----|
| subject                                         | 16.15 | 1   | 30  |
| set*                                            | 1.71  | 1   | 2   |
| activity*                                       | 3.62  | 1   | 6   |
| time_body_accelerometer_mean()_x                | 0.27  | -1  | 1   |
| time_body_accelerometer_mean()_y                | -0.02 | -1  | 1   |
| time_body_accelerometer_mean()_z                | -0.11 | -1  | 1   |
| time_body_accelerometer_std()_x                 | -0.61 | -1  | 1   |
| time_body_accelerometer_std()_y                 | -0.51 | -1  | 1   |
| time_body_accelerometer_std()_z                 | -0.61 | -1  | 1   |
| time_gravity_accelerometer_mean()_x             | 0.67  | -1  | 1   |
| time_gravity_accelerometer_mean()_y             | 0.00  | -1  | 1   |
| time_gravity_accelerometer_mean()_z             | 0.09  | -1  | 1   |
| time_gravity_accelerometer_std()_x              | -0.97 | -1  | 1   |
| time_gravity_accelerometer_std()_y              | -0.95 | -1  | 1   |
| time_gravity_accelerometer_std()_z              | -0.94 | -1  | 1   |
| time_body_accelerometer_jerk_mean()_x           | 0.08  | -1  | 1   |
| time_body_accelerometer_jerk_mean()_y           | 0.01  | -1  | 1   |
| time_body_accelerometer_jerk_mean()_z           | 0.00  | -1  | 1   |
| time_body_accelerometer_jerk_std()_x            | -0.64 | -1  | 1   |
| time_body_accelerometer_jerk_std()_y            | -0.61 | -1  | 1   |
| time_body_accelerometer_jerk_std()_z            | -0.76 | -1  | 1   |
| time_body_gyroscope_mean()_x                    | -0.03 | -1  | 1   |
| time_body_gyroscope_mean()_y                    | -0.07 | -1  | 1   |
| time_body_gyroscope_mean()_z                    | 0.09  | -1  | 1   |
| time_body_gyroscope_std()_x                     | -0.72 | -1  | 1   |
| time_body_gyroscope_std()_y                     | -0.68 | -1  | 1   |
| time_body_gyroscope_std()_z                     | -0.65 | -1  | 1   |
| time_body_gyroscope_jerk_mean()_x               | -0.10 | -1  | 1   |
| time_body_gyroscope_jerk_mean()_y               | -0.04 | -1  | 1   |
| time_body_gyroscope_jerk_mean()_z               | -0.05 | -1  | 1   |
| time_body_gyroscope_jerk_std()_x                | -0.73 | -1  | 1   |
| time_body_gyroscope_jerk_std()_y                | -0.79 | -1  | 1   |
| time_body_gyroscope_jerk_std()_z                | -0.74 | -1  | 1   |
| time_body_accelerometer_mag_mean()              | -0.55 | -1  | 1   |
| time_body_accelerometer_mag_std()               | -0.59 | -1  | 1   |
| time_gravity_accelerometer_mag_mean()           | -0.55 | -1  | 1   |
| time_gravity_accelerometer_mag_std()            | -0.59 | -1  | 1   |
| time_body_accelerometer_jerkmag_mean()          | -0.65 | -1  | 1   |
| time_body_accelerometer_jerkmag_std()           | -0.63 | -1  | 1   |
| time_body_gyroscope_mag_mean()                  | -0.61 | -1  | 1   |
| time_body_gyroscope_mag_std()                   | -0.66 | -1  | 1   |
| time_body_gyroscope_jerkmag_mean()              | -0.76 | -1  | 1   |
| time_body_gyroscope_jerkmag_std()               | -0.78 | -1  | 1   |
| frequency_body_accelerometer_mean()_x           | -0.62 | -1  | 1   |
| frequency_body_accelerometer_mean()_y           | -0.54 | -1  | 1   |
| frequency_body_accelerometer_mean()_z           | -0.67 | -1  | 1   |
| frequency_body_accelerometer_std()_x            | -0.60 | -1  | 1   |
| frequency_body_accelerometer_std()_y            | -0.53 | -1  | 1   |
| frequency_body_accelerometer_std()_z            | -0.62 | -1  | 1   |
| frequency_body_accelerometer_jerk_mean()_x      | -0.66 | -1  | 1   |
| frequency_body_accelerometer_jerk_mean()_y      | -0.63 | -1  | 1   |
| frequency_body_accelerometer_jerk_mean()_z      | -0.74 | -1  | 1   |
| frequency_body_accelerometer_jerk_std()_x       | -0.65 | -1  | 1   |
| frequency_body_accelerometer_jerk_std()_y       | -0.61 | -1  | 1   |
| frequency_body_accelerometer_jerk_std()_z       | -0.78 | -1  | 1   |
| frequency_body_gyroscope_mean()_x               | -0.67 | -1  | 1   |
| frequency_body_gyroscope_mean()_y               | -0.71 | -1  | 1   |
| frequency_body_gyroscope_mean()_z               | -0.64 | -1  | 1   |
| frequency_body_gyroscope_std()_x                | -0.74 | -1  | 1   |
| frequency_body_gyroscope_std()_y                | -0.67 | -1  | 1   |
| frequency_body_gyroscope_std()_z                | -0.69 | -1  | 1   |
| frequency_body_accelerometer_mag_mean()         | -0.59 | -1  | 1   |
| frequency_body_accelerometer_mag_std()          | -0.66 | -1  | 1   |
| frequency_bodybody_accelerometer_jerkmag_mean() | -0.62 | -1  | 1   |
| frequency_bodybody_accelerometer_jerkmag_std()  | -0.64 | -1  | 1   |
| frequency_bodybody_gyroscope_mag_mean()         | -0.70 | -1  | 1   |
| frequency_bodybody_gyroscope_mag_std()          | -0.70 | -1  | 1   |
| frequency_bodybody_gyroscope_jerkmag_mean()     | -0.78 | -1  | 1   |
| frequency_bodybody_gyroscope_jerkmag_std()      | -0.79 | -1  | 1   |
