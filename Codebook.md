## Code Book

This code book describes the variables and the data performed to
produce the tidy data set `tidy_data.txt` created by `run_analysis.R`. All intermediate operations are described in *README.md* file that one can find in the repository.

---

## 1. Source data

The raw data come from the **Human Activity Recognition Using Smartphones Data Set**
collected by the Smartlab research group (Universita degli Studi di Genova).

- Description: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

### Raw files used in this project

| File | Contents |
|---|---|
| `features.txt` | Names of the 561 measured features |
| `activity_labels.txt` | Mapping of activity codes 1-6 to activity names |
| `train/X_train.txt`, `test/X_test.txt` | Feature vectors (561 columns) |
| `train/y_train.txt`, `test/y_test.txt` | Activity code for each observation |
| `train/subject_train.txt`, `test/subject_test.txt` | Subject identifier for each observation |

---

## 2. Structure of the tidy data set

- **Rows:** 180 (one per subject-activity combination)
- **Columns:** 88 (`subject`, `activity`, and 86 averaged measurements)
- **Format:** wide form. Each row is one observational unit (a subject performing one activity);
  each column is one variable.

---

## 3. Identifier variables

| Variable | Type | Values | Description |
|---|---|---|---|
| `subject` | integer | 1-30 | Identifier of the volunteer who performed the activity |
| `activity` | character/factor | see below | Activity performed during measurement |

Activity levels:

| Code (raw) | Label |
|---|---|
| 1 | `WALKING` |
| 2 | `WALKING_UPSTAIRS` |
| 3 | `WALKING_DOWNSTAIRS` |
| 4 | `SITTING` |
| 5 | `STANDING` |
| 6 | `LAYING` |

## 4. Measurement variables (86)

All variables below are the **average, per subject and per activity**, of the corresponding
normalised feature. All are of type `numeric` and lie in `[-1, 1]`. They appear in the tidy
data set in the order listed, which follows the order of `features.txt`.

| # | Variable |
|---|---|
| 1 | `TimeBodyAccelerometerMeanX` |
| 2 | `TimeBodyAccelerometerMeanY` |
| 3 | `TimeBodyAccelerometerMeanZ` |
| 4 | `TimeBodyAccelerometerStdDevX` |
| 5 | `TimeBodyAccelerometerStdDevY` |
| 6 | `TimeBodyAccelerometerStdDevZ` |
| 7 | `TimeGravityAccelerometerMeanX` |
| 8 | `TimeGravityAccelerometerMeanY` |
| 9 | `TimeGravityAccelerometerMeanZ` |
| 10 | `TimeGravityAccelerometerStdDevX` |
| 11 | `TimeGravityAccelerometerStdDevY` |
| 12 | `TimeGravityAccelerometerStdDevZ` |
| 13 | `TimeBodyAccelerometerJerkMeanX` |
| 14 | `TimeBodyAccelerometerJerkMeanY` |
| 15 | `TimeBodyAccelerometerJerkMeanZ` |
| 16 | `TimeBodyAccelerometerJerkStdDevX` |
| 17 | `TimeBodyAccelerometerJerkStdDevY` |
| 18 | `TimeBodyAccelerometerJerkStdDevZ` |
| 19 | `TimeBodyGyroscopeMeanX` |
| 20 | `TimeBodyGyroscopeMeanY` |
| 21 | `TimeBodyGyroscopeMeanZ` |
| 22 | `TimeBodyGyroscopeStdDevX` |
| 23 | `TimeBodyGyroscopeStdDevY` |
| 24 | `TimeBodyGyroscopeStdDevZ` |
| 25 | `TimeBodyGyroscopeJerkMeanX` |
| 26 | `TimeBodyGyroscopeJerkMeanY` |
| 27 | `TimeBodyGyroscopeJerkMeanZ` |
| 28 | `TimeBodyGyroscopeJerkStdDevX` |
| 29 | `TimeBodyGyroscopeJerkStdDevY` |
| 30 | `TimeBodyGyroscopeJerkStdDevZ` |
| 31 | `TimeBodyAccelerometerMagnitudeMean` |
| 32 | `TimeBodyAccelerometerMagnitudeStdDev` |
| 33 | `TimeGravityAccelerometerMagnitudeMean` |
| 34 | `TimeGravityAccelerometerMagnitudeStdDev` |
| 35 | `TimeBodyAccelerometerJerkMagnitudeMean` |
| 36 | `TimeBodyAccelerometerJerkMagnitudeStdDev` |
| 37 | `TimeBodyGyroscopeMagnitudeMean` |
| 38 | `TimeBodyGyroscopeMagnitudeStdDev` |
| 39 | `TimeBodyGyroscopeJerkMagnitudeMean` |
| 40 | `TimeBodyGyroscopeJerkMagnitudeStdDev` |
| 41 | `FrequencyBodyAccelerometerMeanX` |
| 42 | `FrequencyBodyAccelerometerMeanY` |
| 43 | `FrequencyBodyAccelerometerMeanZ` |
| 44 | `FrequencyBodyAccelerometerStdDevX` |
| 45 | `FrequencyBodyAccelerometerStdDevY` |
| 46 | `FrequencyBodyAccelerometerStdDevZ` |
| 47 | `FrequencyBodyAccelerometerMeanFreqX` |
| 48 | `FrequencyBodyAccelerometerMeanFreqY` |
| 49 | `FrequencyBodyAccelerometerMeanFreqZ` |
| 50 | `FrequencyBodyAccelerometerJerkMeanX` |
| 51 | `FrequencyBodyAccelerometerJerkMeanY` |
| 52 | `FrequencyBodyAccelerometerJerkMeanZ` |
| 53 | `FrequencyBodyAccelerometerJerkStdDevX` |
| 54 | `FrequencyBodyAccelerometerJerkStdDevY` |
| 55 | `FrequencyBodyAccelerometerJerkStdDevZ` |
| 56 | `FrequencyBodyAccelerometerJerkMeanFreqX` |
| 57 | `FrequencyBodyAccelerometerJerkMeanFreqY` |
| 58 | `FrequencyBodyAccelerometerJerkMeanFreqZ` |
| 59 | `FrequencyBodyGyroscopeMeanX` |
| 60 | `FrequencyBodyGyroscopeMeanY` |
| 61 | `FrequencyBodyGyroscopeMeanZ` |
| 62 | `FrequencyBodyGyroscopeStdDevX` |
| 63 | `FrequencyBodyGyroscopeStdDevY` |
| 64 | `FrequencyBodyGyroscopeStdDevZ` |
| 65 | `FrequencyBodyGyroscopeMeanFreqX` |
| 66 | `FrequencyBodyGyroscopeMeanFreqY` |
| 67 | `FrequencyBodyGyroscopeMeanFreqZ` |
| 68 | `FrequencyBodyAccelerometerMagnitudeMean` |
| 69 | `FrequencyBodyAccelerometerMagnitudeStdDev` |
| 70 | `FrequencyBodyAccelerometerMagnitudeMeanFreq` |
| 71 | `FrequencyBodyAccelerometerJerkMagnitudeMean` |
| 72 | `FrequencyBodyAccelerometerJerkMagnitudeStdDev` |
| 73 | `FrequencyBodyAccelerometerJerkMagnitudeMeanFreq` |
| 74 | `FrequencyBodyGyroscopeMagnitudeMean` |
| 75 | `FrequencyBodyGyroscopeMagnitudeStdDev` |
| 76 | `FrequencyBodyGyroscopeMagnitudeMeanFreq` |
| 77 | `FrequencyBodyGyroscopeJerkMagnitudeMean` |
| 78 | `FrequencyBodyGyroscopeJerkMagnitudeStdDev` |
| 79 | `FrequencyBodyGyroscopeJerkMagnitudeMeanFreq` |

### Angle variables (7)

| # | Variable | Angle between |
|---|---|---|
| 80 | `AngleTimeBodyAccelerometerMeanGravity` | Mean body acceleration and the gravity vector |
| 81 | `AngleTimeBodyAccelerometerJerkMeanGravityMean` | Mean body acceleration jerk and mean gravity |
| 82 | `AngleTimeBodyGyroscopeMeanGravityMean` | Mean angular velocity and mean gravity |
| 83 | `AngleTimeBodyGyroscopeJerkMeanGravityMean` | Mean angular velocity jerk and mean gravity |
| 84 | `AngleXGravityMean` | X axis and mean gravity |
| 85 | `AngleYGravityMean` | Y axis and mean gravity |
| 86 | `AngleZGravityMean` | Z axis and mean gravity |
