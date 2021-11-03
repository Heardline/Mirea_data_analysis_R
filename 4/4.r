library(help='datasets')



help(attitude)
dats <- attitude
# 6
head(dats)

dats[,3]

#8
head(dats,3)
#9
tail(dats,5)
# 10
View(dats)
# 11 
str(dats)
# 12
colnames(dats)
# 13 
summary(dats)
# 14
Name <- colnames(dats)
# 15 
my_vector <- dats[,1]
# 16 
mean(my_vector)
# 17
summary(my_vector)
# 18
dats$new <- dats$rating*3
dats
# 19 
dats$zero <- 0
# 20 
dats$id <- 1:nrow(dats)
# 21 
library(tibble)
dats1 <- add_column(dats,1:nrow(dats))
# 22
dats1 <- subset(dats1,select= -zero)
# 23
dim(dats1)
# 24
ncol(dats1)
# 25 
nrow(dats1)
# 26
num <- c(1:5)
dats1[5,num]
dats1[,c("rating","complaints")]
# 27
dats1[c(4,5,6),]
# 28 
dats1[c(10,11),c(7,8,9)]
# 29
dats1[5,c(1,3)]
# 30
univer <- UCBAdmissions
# 31
univer <- as.data.frame(univer)
# 32
FA <- subset(univer, Dept == 'A')
# 33
univer.small <- univer[c(3, 9, 14, nrow(univer)), 4]
# 34
univer1 <- subset(univer, Gender == 'Male' & Freq>138)
