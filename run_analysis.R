# reading the data into R
train<-read.table('./UCI HAR Dataset/train/X_train.txt')
test<-read.table('./UCI HAR Dataset/test/X_test.txt')
ytrain<-read.table('./UCI HAR Dataset/train/y_train.txt')
ytest<-read.table('./UCI HAR Dataset/test/y_test.txt')
subjecttrain<-read.table('./UCI HAR Dataset/train/subject_train.txt')
subjecttest<-read.table('./UCI HAR Dataset/test/subject_test.txt')
columnNames<-read.table('./UCI HAR Dataset/features.txt')

# selecting the columns which contain mean and standard deviation and
# make the column names readable
columnNames<-columnNames[,2]
mean<-grep('mean\\(\\)',columnNames)
stand<-grep('std\\(\\)',columnNames)
columnNames<-make.names(as.character(columnNames))

library('stringr')
columnNames<-str_replace_all(columnNames,'\\.\\.\\.','')
columnNames<-str_replace_all(columnNames,'\\.\\.','')
columnNames<-str_replace_all(columnNames,'tB','timeB')
columnNames<-str_replace_all(columnNames,'tG','timeG')
columnNames<-str_replace_all(columnNames,'fB','freqB')
columnNames<-str_replace_all(columnNames,'fG','freqG')
columnNames<-str_replace_all(columnNames,'BodyBody','Body')

# merge the data
data<-rbind(test,train)
activity<-rbind(ytest,ytrain)
subject<-rbind(subjecttest,subjecttrain)
rm(list=c('subjecttest','subjecttrain','ytest','ytrain'))

activity<-activity[[1]]
subject<-subject[[1]]

# name the columns
names(data)<-columnNames

# select only the columns with mean and std and add columns with activity and subject
data<-data[,c(mean,stand)]
data<-cbind(activity,subject,data)
rm(list=c('test','train','subject','columnNames','mean','stand'))

# replace the activity numbers with names
label<-c('WALKING','WALKING UP','WALKING DOWN','SITTING','STANDING','LAYING')

data$activity<-str_replace_all(data$activity,'1',label[1])
data$activity<-str_replace_all(data$activity,'2',label[2])
data$activity<-str_replace_all(data$activity,'3',label[3])
data$activity<-str_replace_all(data$activity,'4',label[4])
data$activity<-str_replace_all(data$activity,'5',label[5])
data$activity<-str_replace_all(data$activity,'6',label[6])

# create a new matrix for the mean of each variable for each activity and each subject
y<-matrix(nrow=180,ncol = 68)

for(j in 1:6) {
    for(i in 1:30) {
        tmp<-as.numeric(sapply(data[data$subject == i & data$activity == label[j], 3:68],mean))
        tmp<-c(j,i,tmp)
        y[i+(j-1)*30,]<-tmp
    }
}

# another adjustment to the column names
colnames(data)<-str_replace_all(colnames(data),'\\.m','M')
colnames(data)<-str_replace_all(colnames(data),'\\.s','S')
colnames(y) <- colnames(data)
y<-as.data.frame(y)

rm(list=c('activity','tmp','i','j','label'))

# generate the txt file containing the tidy data set
write.table(y, file = 'tidyDataSet.txt', row.names = FALSE)

