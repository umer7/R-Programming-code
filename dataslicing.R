library(caret); library(kernlab); data(spam)
inTrain <- createDataPartition(y=spam$type,p=0.75,list=FALSE)
training <- spam[inTrain,]
testing <-spam[-inTrain,]
dim(training)
set.seed(32343)
folds <- createFolds(y=spam$type,k=10,list=TRUE,returnTrain = TRUE)
sapply(folds,length)
folds[[1]][1:10]
set.seed(32323)
folds <- createFolds(y=spam$type,k=10,list=TRUE,returnTrain = FALSE)
sapply(folds,length)
folds[[1]][1:10]
set.seed(32323)
folds <- createResample(y=spam$type,times=10,list=TRUE)
sapply(folds,length)

set.seed(32323)
tme <-1:1000
folds <- createTimeSlices(y=tme,initilalWindow=20,hprizon=10)
names(folds)

savehistory("~/13aug.Rhistory")
