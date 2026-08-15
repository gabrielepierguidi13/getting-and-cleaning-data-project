# Final peer-reviewed project for *Getting and cleaning the data* Course (Coursera, John Hopkins University)

The goal is to prepare a tidy dataset starting from the [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) dataset. 

**Files in the repository**
  
  | File | Description |
  |---|---|
  | `README.md` | This file explains the repo and the script|
  | `run_analysis.R` | The main script for downloading, merging, cleaning and aggregating the data |
  | `CodeBook.md` | Describes the source data, the transformations applied, and every variable in the output file |
  | `tidy_data.txt` | The final tidy data set (180 rows, 88 columns) |
  
  ## What the script does
  
  The script accomplishes the goal of the assignment in five steps:
  
  1. **Merges** the training and the test sets into a single dataset.
`subject`, `y` and `X` are column-bound within each set, then the two sets are
row-bound (10299 rows, 563 columns).

2. **Extracts** only the measurements on the mean and standard deviation for each
measurement — the columns whose feature name contains `mean()` or `std()`, giving 86 variables (see `CodeBook.md` for further details).

3. **Uses descriptive activity names**, replacing the codes 1–6 with `WALKING`,
`WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`.

4. **Labels the data set with descriptive variable names** — abbreviations are expanded and invalid characters are removed.

  | Original variable name | New variable name |
  |---|---|
  | `t` | `Time`|
  | `f` | `Frequency` |
  | `Acc` | `Accelerometer` |
  | `Gyro` | `Gyroscope` |
  | `Mag` | `Magnitude` |
  | `std` | `StdDev` |
  | `BodyBody` | `Body` |

5. **Creates a second, independent tidy data set** with the average of each variable for
each activity and each subject (180 rows, 88 columns; see `CodeBook.md` for further details).
---
  
  
