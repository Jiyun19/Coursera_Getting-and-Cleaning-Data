library("dplyr")
library("tidyr")
library("psych")


##Loading the data

x_test<-read.table(file="./test/X_test.txt")
y_test<-read.table(file="./test/y_test.txt")

subject_test<-read.table(file="./test/subject_test.txt")
subject_train<-read.table(file="./train/subject_train.txt")

x_train<-read.table(file="./train/X_train.txt")
y_train<-read.table(file="./train/y_train.txt")

x_label<-read.table(file="./features.txt")
activity_name<-read.table(file="./activity_labels.txt")



##Changing variable names
names(x_test)<-x_label[,2]
names(x_train)<-x_label[,2]
names(subject_test)<-"test"
names(subject_train)<-"train"
names(y_test)<-"activity"
names(y_train)<-"activity"


##Changing variable types (converting the 'activity' variable into a factor variable with understandable labels)
y_train$activity<-as.factor(y_train$activity)
levels(y_train$activity)<-activity_name[,2]
y_test$activity<-as.factor(y_test$activity)
levels(y_test$activity)<-activity_name[,2]

##Extracting specified variables
extract_variables<-x_label[grep("mean\\(\\)|std\\(\\)",x_label[,2]),2]
extract_variables
x_train2<-x_train[,extract_variables]
x_test2<-x_test[,extract_variables]


##Merging training and test data into a single set, and adding an additional variable to differentiate between them
merged_train<-cbind(subject_train,x_train2,y_train)
merged_test<-cbind(subject_test,x_test2,y_test)


merged_all<-bind_rows(merged_train,merged_test)
first_set<-merged_all %>% 
  gather(set,subject,c(test,train)) %>% 
  drop_na(subject)%>%
  relocate(subject,set,activity)%>%arrange(subject,set)

##Making variable names understandable

names(first_set)<-gsub("-", "_", names(first_set))
names(first_set)<-gsub("^t", "time_", names(first_set))
names(first_set)<-gsub("^f", "frequency_", names(first_set))
names(first_set)<-gsub("Acc", "_accelerometer_", names(first_set))
names(first_set)<-gsub("Gyro", "_gyroscope_", names(first_set))
names(first_set)<-gsub("__", "_", names(first_set))
names(first_set)<-tolower(names(first_set))
names(first_set)

##Summarizing data using means grouped by subjects and activities
second_set<-first_set%>%group_by(subject,activity)%>% summarise(across(where(is.numeric), ~ mean(.x, na.rm = TRUE)))
head(first_set)
head(second_set)

##Saving data
write.table(first_set, "1st_data.txt", row.names = FALSE)
write.table(second_set, "2nd_data.txt", row.names = FALSE)

##summarize
describe(first_set)
write.table(describe(first_set)[,c("mean","min","max")], sep="\t","clipboard")
                              
