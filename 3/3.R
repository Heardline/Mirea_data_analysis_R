

# 1.1
first_vector <- c(1,2,3)
second_vector <- c(3,2,1)
print(first_vector + second_vector)
first_vector*2+100
sqrt(first_vector*10)
first_vector/second_vector

# 2 
first <- 1
two <- 2
third <- 3

if(first+two>third){
  result_bol <- TRUE
}else{
  result_bol <- FALSE
}
print(result_bol)

# 3 
ints_first <- 7:7134
ints_second <- 8537:9642
print(ints_first)
# 4
vector1 <- c(4,7,3,10,5)

# 5
sum_vec <- sum(vector1[vector1<14])
print(vector1[vector1<10])
print(sum_vec)
#---------
# 1
lev_obr <- c("Начальное","Среднее","Средне-специальное","Высшее","Среднее")
# 2-4
str(lev_obr)
class(lev_obr)
# 5
table(lev_obr)
# 6 
lev_obr <- factor(lev_obr)
print(lev_obr)
# 7 
str(lev_obr)
# 8
lev_obr <-ordered(lev_obr, levels = c('Начальное', 'Среднее', 'Средне-специальное', 'Высшее'))
# 9 
new_vector <- c("Программист","Дизайнер","Тестировщик","Программист")
new_vector <- factor(new_vector)
fact <- ordered(new_vector,levels=c("Программист","Дизайнер","Тестировщик"))
str(fact)
# --------
# 1-3
mtx <- matrix(seq(1,27),nrow=3,ncol=9)
str(mtx)
ncol(mtx)
# 4
rownames(mtx) <- c("Первая строка","Вторая строка","Третья строка")
colnames(mtx) <- c(9,8,7,6,5,4,3,2,1)
mtx
# 5 
mtx1 <- t(mtx)
# 6
mtx2 <- mtx[2,3]
print(mtx2)
# 7
mtx[,2:3]
# 8
mtx3 <- mtx[1,c(-2,-3)]
mtx3 
# 9
mtx[,2]
# 10
mtx[c(1,3),]
#--------
#1
library(tidyverse)
#2-4
sps <- list(a = "������",b=c(1,2),c=c("blue","green","red"),d=matrix(1:4,ncol=2,byrow=TRUE),e=list(a=1,b=2))
sps[[3]][2]
sps$a


