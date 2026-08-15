library(dplyr)

# --- Create data directory ---

dir <- file.path(getwd(), "data")
if (!dir.exists(dir)) {
  dir.create(dir)
}

# --- Download the data and unzip ---

file_dir <- file.path(dir, "UCI HAR Dataset")
if (!dir.exists(file_dir)) {
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  zip_file <- file.path(dir, "UCI HAR Dataset.zip")
  download.file(url, zip_file, mode = "wb")
  unzip(zip_file, exdir = dir)
}

# --- Helper function to load data (avoid repetition for test and train set) ---

load_file <- function(identifier) {
  d <- file.path(file_dir, identifier)
  x <- read.table(file.path(d, paste0("X_", identifier, ".txt")))
  y <- read.table(file.path(d, paste0("y_", identifier, ".txt")))
  subject <- read.table(file.path(d, paste0("subject_", identifier, ".txt")))
  cbind(subject, y, x)
}



# --- Step 1: Merge the training and the test sets ---

all_data <- rbind(load_file("train"), load_file("test"))



# --- Step 2: Extract the mean and standard deviation measurements ---

feature_names <- read.table(file.path(file_dir, "features.txt"))
features <- as.character(feature_names$V2)

keep <- grep("mean|std", features, ignore.case = TRUE)
all_data_mean_std <- all_data[, c(1, 2, keep + 2)]



# --- Step 4: Descriptive variable names ---

n <- features[keep]
n <- gsub("BodyBody", "Body", n)
n <- gsub("^angle\\((.*)\\)$", "angle-\\1", n)
n <- gsub(",", "-", n)
n <- gsub("-mean\\(\\)", "-Mean", n)
n <- gsub("-std\\(\\)", "-StdDev", n)
n <- gsub("-meanFreq\\(\\)", "-MeanFreq", n)
n <- gsub("[()]", "", n)
n <- gsub("^angle", "Angle", n)
n <- gsub("(^|-)t", "\\1Time", n)
n <- gsub("(^|-)f", "\\1Frequency", n)
n <- gsub("Acc", "Accelerometer", n)
n <- gsub("Gyro", "Gyroscope", n)
n <- gsub("Mag", "Magnitude", n)
n <- gsub("gravity", "Gravity", n)
n <- gsub("-", "", n)

names(all_data_mean_std) <- c("subject", "activity", n)



# --- Step 3: Descriptive activity names ---

activity_labels <- read.table(file.path(file_dir, "activity_labels.txt"),
                              col.names = c("code", "name"))
all_data_mean_std$activity <- factor(all_data_mean_std$activity,
                                     levels = activity_labels$code,
                                     labels = activity_labels$name)



# --- Step 5: Average of each variable per subject and activity ---

all_data_tidy <- all_data_mean_std %>%
  group_by(subject, activity) %>%
  summarise(across(everything(), mean), .groups = "drop") %>%
  arrange(subject, activity)

write.table(all_data_tidy, "tidy_data.txt", row.names = FALSE)

dim(all_data_tidy)

