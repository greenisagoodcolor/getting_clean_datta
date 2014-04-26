features <- read.table("features.txt")
features <- features[,2]

#read test data
testdf <- read.table("./test/X_test.txt", col.names=features)
y <- read.table("./test/subject_test.txt", col.names="subject")
testdf <- cbind(testdf, y)
z <- read.table("./test/y_test.txt", col.names="activity")
testdf <- cbind(testdf, z)

#read train data
traindf <- read.table("./train/X_train.txt", col.names=features)
y <- read.table("./train/subject_train.txt", col.names="subject")
traindf <- cbind(traindf, y)
z <- read.table("./train/y_train.txt", col.names="activity")
traindf <- cbind(traindf, z)

#answer 1 and 3. combine test and train with descriptive names

df <- rbind(testdf, traindf)

#answer 2. extract mean and sd
meandf <- NULL
for (i in 1:561) {
	x <- mean(df[, i])
	meandf <- c(meandf, x)
	}

sddf <- NULL
for (i in 1:561) {
	x <- sd(df[, i])
	sddf <- c(sddf, x)
	}
meansd <- matrix(c(meandf, sddf), nrow=2, ncol=561)
dimnames(meansd) <- list(c("mean", "sd"), features)

#answer 4. give activity descriptions (i.e. walking, laying, etc.)
labels <- read.table("activity_labels.txt")
colnames(labels) <- c("activity", "activity.description")
df <- merge(df, labels, by="activity")

#answer 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
activitymeans <- colMeans(df[, 2:563])
split <- sapply(split(df[,2:562], list(df$activity.description, df$subject)), colMeans) 
write.csv(split, "tidy.csv")



