# 8 Laba
# 1
install.packages("ggplot2")
library(ggplot2)
# 2
salary <- read.csv("8/Salaries.csv", header = TRUE)
#  3-9 Два способа
disciplines <- as.factor(salary$discipline)

ggplot(salary, aes(x = yrs.service, y = salary)) + geom_point(aes(
  size = yrs.since.phd,
  shape = disciplines,
  color = rank
),
alpha = 0.8) + geom_smooth() + geom_smooth(aes(color = rank))

qplot(
  x = yrs.service,
  y = salary,
  data = salary,
  color = rank,
  geom = c("point", "smooth"),
  shape = discipline,
  size = yrs.since.phd,
  alpha = 0.6
)
# 10
qplot(
  x = salary,
  data = salary,
  geom = "histogram",
  binwidth = 5000,
  xlim = c(0, 250000),
  fill = discipline
)
# 11
qplot(
  x = salary,
  data = salary,
  geom = "density",
  col = rank,
  fill = rank,
  alpha = 0.5
)
# 12
qplot(
  x = yrs.service,
  data = salary,
  geom = "freqpoly",
  col = discipline
)
# 13
qplot(
  x = discipline,
  data = salary,
  geom = "bar",
  fill = rank
)
# 14
qplot(
  x = salary,
  y = rank,
  geom = c("jitter", "boxplot"),
  data = salary,
  color = rank,
  outlier.color = NA,
  alpha = 0.5
)
# 15
qplot(
  x = salary,
  data = salary,
  geom = "freqpoly",
  facets = rank ~ .,
  col = rank
)
# 16
qplot(
  x = salary,
  y = yrs.service,
  data = salary,
  geom = "smooth",
  facets = rank ~ discipline
)
# 17
qplot(
  x = salary,
  data = salary,
  geom = "freqpoly",
  facets = rank ~ discipline
)
# 18
qplot(
  x = salary,
  data = salary,
  geom = "freqpoly",
  col = yrs.service
)
# 19
qplot(
  x = salary,
  data = salary,
  geom = "freqpoly",
  col = discipline
)
# 20
qplot(
  x = salary,
  data = salary,
  geom = "freqpoly",
  col = rank
)
# 21
ggplot(salary, aes(x = salary, y = yrs.service)) + geom_point(aes(color = yrs.service), alpha = 0.5, size = 2) +
  labs(title = "Salary/year_study", y = "Salary") + 
  scale_x_discrete(name ="Year of Study", 
                   labels = c("A", "B", "C", "D", "E", "F")) + 
  scale_color_continuous(name = "Salary",
                         breaks = c(300, 500, 700),
                         labels = c("Low", "Medium", "Hight"),
                         low = "yellow",
                         high = "red"
)
