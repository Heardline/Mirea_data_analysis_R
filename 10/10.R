# 10 Laba 
# 1
Tesla<-c(8,5,10,8,9,6,9,10,9,10,8,9,9,10,9,9,9)
Toyota<-c(6,7,10,10,9,7,10,8,9,8,10,10,8,8,6,9,10)
BMW<-c(6,8,9,10,7,10,9,9,6,10,8,9,7,10,8,9,9)
Lexus<-c(9,8,10,7,9,8,9,10,8,10,8,9,10,8,6,9,6)
Mercedez<- c(7,5,7,5,10,7,6,8,9,7,10,7,9,9,6,9,8)

Companys <- list(Tesla,Toyota,BMW,Lexus,Mercedez)
# 2 
# Запишем в лист все компании и после с помощью функции посчитаем среднее, медиану и моду каждого
# А можно просто mean(),median() писать отдельно но так не интересно и рутино :)
meanValue = sapply(Companys[1:length(Companys)], function(x) mean(x))
medianValue = sapply(Companys[1:length(Companys)], function(x) median(x))
modaValue = sapply(Companys[1:length(Companys)], function(x) table(x))

sapply(Companys[1:length(Companys)], function(x) summary(x))
# 3 
# У четырех первых компаний одинаковая медиана, 
# 2.1
plot(Tesla)
title("Тесла")
# 2.2
hist(Tesla)
AutoCompany <- data.frame(Companys)
# 2.3
colnames(AutoCompany) <- c("Tesla","Toyota","BMW","Lexus","Mercedez")
# 2.4-5
summary(AutoCompany)
sapply(Companys[1:length(Companys)], function(x) summary(x))
# Получилось тоже самое, что и в #2 
# 2.6
var(AutoCompany)
# 2.6.1
sd(AutoCompany$Tesla)
# 2.7
quantile(AutoCompany$Tesla)
quantile(AutoCompany$Tesla,probs = 0.1)
# 2.8
max(AutoCompany[,3])
min(AutoCompany[,3])
# 2.9
which.max(AutoCompany[,2])
which.min(AutoCompany[,2])
# 10
library(readxl)
Avto <- read_xlsx("10/avto.xlsx")
# 11
aggregate(Avto['cost'],by=Avto['class'],mean)
aggregate(Avto['cost'],by=Avto['fuel'],mean)
# 12
get_mean_by <- function(name){
  aggregate(Avto['cost'],by=Avto[name],mean)
}
# 13
get_mean_by("class")
# 14
install.packages("moments")
library(moments)
# 15
skewness(Avto$cost)
kurtosis(Avto$cost)
# 16
aggregate(cost~class+body,Avto,mean)\
# 17
Avto[,"Group.1"] <- paste(Avto$class,Avto$body)
head(Avto)
# 18
aggregate(cost~class+body,Avto,mean)
aggregate(Avto$cost,by=list(Avto$class,Avto$body),mean)
# 19
install.packages("psych")
library(psych)
# 20
describe(Avto)
# 21 С помощью sapple пробигаемся по всем столбцам и проверяем is.character(это текст?), получаем список столбцов и записываем через []
Avto <- Avto[,c(which(sapply(Avto,is.character)))]
Avto
# 22
describeBy(Avto,mat=F,group=list(Avto$class,Avto$body))
describeBy(Avto,mat=T,group=list(Avto$class,Avto$body))
