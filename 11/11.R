# Laba 11
# 1
sal <- read.csv("11/Salaries.csv")
# 2
str(sal)
head(sal)
# 3 
#tab <- table(sal$discipline)
tab <- table(sal$sex)
# 4
dim(tab)
# 5-6
tab1 <- table(Пол=sal$sex,Дисциплина=sal$discipline)
# 7
tab1
dim(tab1)
# 8-9
tab2 <- table(Пол=sal$sex,Дисциплина=sal$discipline,Должность=sal$rank)
tab2
# 10
dim(tab2)
# 12
tab2 <- table(Пол=sal$sex,Дисциплина=sal$discipline,Должность=sal$rank, exclude = "Male")
tab2
# 13
margin.table(tab2,1)
margin.table(tab2,2)
margin.table(tab2,3)
# 14
prop.table(tab)
prop.table(tab1)
# 15
prop.table(tab2,3)
# 16-17
addmargins(tab1)
# 18
addmargins(tab1,1)
# 19
addmargins(tab1,2)
# 20
addmargins(prop.table(tab1))
# 21
addmargins(prop.table(tab1,1))
# 22
addmargins(prop.table(tab1,2))
# 23
install.packages("gmodels")
library(gmodels)

CrossTable(sal$sex,sal$discipline)
# 24-26
tab3 <- xtabs(~sex+discipline+rank,data=sal)
tab3
tab2 <- table(Пол=sal$sex,Дисциплина=sal$discipline,Должность=sal$rank)
tab2
# 27
?plot
barplot(tab,xlab="Пол",ylab="Количество человек",col=c("Pink","Blue"))
# 28
barplot(tab1,xlab="Дисциплина",ylab="Количество человек",col=c("Pink","Blue"),legend.text=c("Женский","Мужской"))
# 29
tab1
chisq.test(tab1)
# p-value > 0,05 означает что признаки независимы
# 30
fisher.test(tab1)
# 31
t.test(salary ~ sex,sal)
# 31.2 Можно только две группы сравнить
t.test(salary ~ rank,sal[sal$rank != 'AssocProf',])
# 31.3
t.test(yrs.service ~ rank,sal[sal$rank != 'AsstProf',])
# 32
hist(sal$salary)
# 33
library(ggplot2)
ggplot(data=sal,aes(rank,salary,fill=rank)) + geom_col(position="dodge")
# 34
ggplot(data=sal,aes(salary,fill=rank)) + geom_density(alpha=0.4)
# 35
ggplot(sal,aes(rank,salary)) + geom_boxplot()
# Есть выбросы у профессоров (больше обычного получает)
# 36
shapiro.test(sal$salary)
shapiro.test(sal$salary[sal$rank == "AssocProf"]) # p-уровень больше 0.05 тогда принимает нулевую гипотезу
shapiro.test(sal$salary[sal$rank == "AsstProf"]) # p-уровень меньше 0.05 тогда принимает альтернатиную гипотезу
shapiro.test(sal$salary[sal$rank == "Prof"]) # p-уровень меньше 0.05 тогда принимает альтернатиную гипотезу
# 37
bartlett.test(salary ~ rank,sal)
# 38 sal1 ????
test <- t.test(salary ~ rank,sal[sal$rank != 'AssocProf',])
# 39
test[pi]
# 40
t.test(sal$yrs.since.phd,sal$yrs.service,paired = T)
# Не равны
# 41
data <- data.frame(Count=c(32,21,6,13,20,6,25,76,8,33,71,6),sex=c(0,0,0,1,1,1,0,0,0,1,1,1),buys=c(1,2,3,1,2,3,1,2,3,1,2,3),Marrie=c(0,0,0,0,0,0,1,1,1,1,1,1))
data
xtabs(data)
chisq.test(data)

