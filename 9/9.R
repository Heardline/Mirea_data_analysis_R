# 9 Laba
# 1
install.packages("ggplot2")
library(ggplot2)
Step <- read.csv("9/Pedometer.csv")
# 2
Step$Day <- ordered(as.factor(Step$Day), levels = c('M', 'T', 'W', 'R', 'F', 'S', 'U'))
# 3-6
StepG <- ggplot(Step, aes(x = Day, y = kcal)) + 
  geom_point(aes(color = DayType, size = Rain), alpha = 0.6)
StepG
# 7-11
StepSum <- aggregate(Step['kcal'], by = Step["Day"], sum)
StepG1 <- ggplot(Step, aes(x = Steps, y = kcal)) + 
  geom_point() + stat_smooth(method = "lm") + 
  coord_cartesian(xlim = c(4000, 6000), ylim = c(50, 150))
StepG1
# 12-17
StepG2 <- ggplot(aggregate(Step['Steps'], by = Step["DayType"], sum), 
                aes(y = Steps, x = DayType)) + 
  geom_col(fill = "yellow") + 
  geom_text(aes(label = Steps))
StepG2
# 15 Скорее всего выпало из другого варианта но тоже сделал
dataset <- read.csv("9/Titanic.csv")
StepG3 <-
  ggplot(dataset, aes(x = Age)) + geom_histogram(
    binwidth = 4,
    fill = "yellow",
    colour = "black",
    alpha = 0.9
  )
StepG3
# 17
StepG3 <-
  ggplot(Step, aes(Day, Steps)) + stat_summary(
    fun.y = mean,
    geom = "bar",
    fill = "yellow",
    colour = "black"
  )
StepG3
# 18
ggplot(Step, aes("",  fill = Day)) + geom_bar(position = "stack", color = "brown")
ggplot(Step, aes("",  fill = Day)) + geom_bar(position = "fill", color = "brown")
ggplot(Step, aes("", fill = Day)) + geom_bar(position = "dodge", color = "brown")
# 19
StepG4 <- ggplot(Step, aes(Mile, Rain)) + 
  geom_point(aes(color = kcal), size = 4) + 
  labs(title = "Пройдены миль в определенную погоду", y = "Погода")
StepG4
# 20
? ggplot
# 21
StepG4 <-
  ggplot(Step, aes(Day, Steps)) +
  geom_point(aes(color = kcal), size = 4) +
  labs(title = "Статистика шагомера", y = "Количество пройденных шагов") +
  facet_grid(DayType ~ Rain) +
  scale_color_continuous(
    name = "Сожженных колориев",
    breaks = c(250, 60),
    labels = c("Спортсмен", "Новичек"),
    low = "Red",
    high = "Blue"
  ) + scale_x_discrete(name = "Дни недели",
                       labels = c("ПН", "ВТ", "СР", "ЧТ", "ПТ", "СБ", "ВС"))
StepG4
# 22
StepG5 <- ggplot(Step, aes("", fill = Rain)) + 
  geom_bar(position = "fill", color = "blue") + 
  coord_polar(theta = "y")
StepG5
ggsave("plot.pdf")
