library(plyr)
library(dplyr)
train = read.table("train/X_train.txt")
test = read.table("test/X_test.txt")
mergedData= merge(train,test,all=TRUE)
data = select(mergedData, c(V1,V2,V3,V4,V5,V6,V41,V42,V43,V44,V45,V46,V81,V82,V83,V84,
                            V85,V86,V121,V122,V123,V124,V125,V126,V161,V162,V163,V164,
                            V165,V166,V201,V202,V240,V241,V253,V254,V266,V267,V268,
                            V269,V270,V271,V345,V346,V347,V348,V349,V350,V424,V425,
                            V426,V427,V428,V429,V503,V504,V516,V517,V529,V530,V542,V543))
data = rename(data, tBodyAccMeanX=V1, tBodyAccMeanY=V2, tBodyAccMeanZ=V3,tBodyAccStdX=V4,
              tBodyAccStdY=V5, tBodyAccStdZ=V6, tGravityAccMeanX=V41,tGravityAccMeanY=V42,
              tGravityAccMeanZ=V43,tGravityAccStdX=V44,tGravityAccStdY=V45,tGravityAccStdZ=V46,
              tBodyAccJerkMeanX=V81,tBodyAccJerkMeanY=V82,tBodyAccJerkMeanZ=V83,
              tBodyAccJerkStdX=V84,tBodyAccJerkStdY=V85,tBodyAccJerkStdZ=V86,tBodyGyroMeanX=V121,
              tBodyGyroMeanY=V122,tBodyGyroMeanZ=V123,tBodyGyroStdX=V124,tBodyGyroStdY=V125,
              tBodyGyroStdZ=V126,tBodyGyroJerkMeanX=V161,tBodyGyroJerkMeanY=V162,
              tBodyGyroJerkMeanZ=V163,tBodyGyroJerkStdX=V164,tBodyGyroJerkStdY=V165,
              tBodyGyroJerkStdZ=V166,tBodyAccMagMean=V201,tBodyAccMagStd=V202,
              tBodyGyroMagMean=V240,tBodyGyroMagStd=V241,tBodyGyroJerkMagMean=V253,
              tBodyGyroJerkMagStd=V254,fBodyAccMeanX=V266,fBodyAccMeanY=V267,fBodyAccMeanZ=V268,
              fBodyAccStdX=V269,fBodyAccStdY=V270,fBodyAccStdZ=V271,fBodyAccJerkMeanX=V345,
              fBodyAccJerkMeanY=V346,fBodyAccJerkMeanZ=V347,fBodyAccJerkStdX=V348,
              fBodyAccJerkStdY=V349,fBodyAccJerkStdZ=V350,fBodyGyroMeanX=V424,fBodyGyroMeanY=V425,
              fBodyGyroMeanZ=V426,fBodyGyroStdX=V427,fBodyGyroStdY=V428,fBodyGyroStdZ=V429,
              fBodyAccMagMean=V503,fBodyAccMagStd=V504,fBodyAccJerkMagMean=V516,fBodyAccJerkMagStd=V517,
              fBodyBodyGyroMagMean=V529,fBodyBodyGyroMagStd=V530,fBodyBodyGyroJerkMagMean=V542,
              fBodyBodyGyroJerkMagStd=V543)

trainActivLabls = read.table("train/y_train.txt")
teActivLabls = read.table("test/y_test.txt")
activ = rbind(trainActivLabls,teActivLabls)
activ = rename(activ, Activity = V1)
data = cbind(activ,data)
testSubj = read.table("test/subject_test.txt")
trainSubj = read.table("train/subject_train.txt")
Subj = rbind(trainSubj,testSubj)
Subj = rename(Subj, Subject = V1)
data = cbind(Subj,data)
step5 = group_by(data,Subject,Activity) %>% summarise_each(funs(mean))

