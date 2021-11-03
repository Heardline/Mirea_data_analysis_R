# 1
dats2 <- read.csv("evals.csv", header = TRUE, sep = ",")
# 2
dats2$Number <- 1:nrow(dats2)
# 3
dats2 <- dats2[(order(dats2$Number, decreasing = TRUE)),]
# 4
dats2 <- dats2[c(nrow(dats2),1:(nrow(dats2)-1)),]
# 5 
dats2$Number <- NULL
# 6 Удалили столбец number
# 7
dim(dats2)
# 8-11
dat_f <- subset(dats2,score>4&gender=="female")[,c(1,7,6)]
# 12
dat_m <- subset(dats2,score>4&gender=="male")[,c(1,7,6)]
# 13
?rbind()
?cbind()
# 14
dat_fm <- rbind(dat_f,dat_m)
# 15
dats3 <- dats2[,c(2:7)]
# 16
dats4 <- dats2[,c(8:11)]
# 17 
dats5 <- cbind(dats3,dats2)
# 18 
dats5 <- NULL
# 19
rm(dats3,dats4)
# 20

# 21 
dim(dats2)
# 22
dats6 <- dats2[,c(1,4,5,6,7,10)]
# 24
tail(dats6,6)
# 25
dats6$rank  <- NULL
dats6$ethnicity <- NULL
dats7 <-dats2[,c(1,6)]
# 26
pairs(dats7)
# 27
rownames(dats7)[5] <- "fa"
# ---------------------------
# 1
cik <- read.csv("evals.csv", header = TRUE, sep = ",")
# 2
for (i in 1 :nrow(cik)){
  if (cik$score[i] > 4){
    cik$new_cik[i] <- 1
  } else {
    cik$new_cik[i] <- 0}
}
# 3
score_mov <- cik$score
for(i in length(score_mov)){
    score_mov[i] = mean(score_mov[c((i):(6+i))])
}
score_mov
