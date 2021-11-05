# 9 Laba
# 1
install.packages("ggplot2")
library(ggplot2)
Step <- read.csv("9/Pedometer.csv")
# 2
Step$Day <- ordered(as.factor(Step$Day),levels=c('M','T','W','R','F','S','U'))
# 3-6
StepG <- ggplot(Step,aes(x=Day,y=kcal)) + geom_point(aes(color=DayType,size=Rain)) + geom_smooth()
StepG
# 7
install.packages("tidyverse")
library(tidyverse)

StepGroup <- Step %>%
  group_by(Day) %>%
  mutate(sum.kcal = sum(kcal)) 
# 8
ggplot(StepGroup,aes(x=Day,y=sum.kcal,group=Day)) + geom_point(size=2) + geom_smooth(method='lm')

