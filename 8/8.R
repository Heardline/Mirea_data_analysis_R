# 8 Laba
# 1
install.packages("ggplot2")
library(ggplot2)
# 2
Salary <- read.csv("8/Salaries.csv", header = TRUE)
# 3-9
disciplines <- as.factor(Salary$discipline)

ggplot(Salary, aes(x = yrs.service, y = salary)) + geom_point(aes(
  size = yrs.since.phd,
  shape = disciplines,
  color = rank
),
alpha = 0.8) + geom_smooth() + geom_smooth(aes(color = rank))
# 10
ggplot(Salary,aes(salary,color=disciplines)) + geom_histogram()
