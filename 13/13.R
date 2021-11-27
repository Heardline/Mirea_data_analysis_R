# 13 Laba

# 1
dataset <- read.csv("shops.csv")
head(dataset)
dataset$food <- as.factor(dataset$food)
dataset$store <- as.factor(dataset$store)
dataset$origin <- as.factor(dataset$origin)
summary(dataset)
str(dataset)
# 2
install.packages("ggplot2")
library(ggplot2)

ggplot(dataset,aes(x=food,y=price)) + geom_boxplot()
# 3
install.packages("car")
library(car)

fit<-aov(price ~ food,data=dataset)
summary(fit)

mod_ind <- lm(price ~ food,data=dataset)
mod_ind
anova(mod_ind)

Anova(mod_ind)
# 4-5
TukeyHSD(fit)
plot(TukeyHSD(fit),las=1)
# 6
ggplot(dataset,aes(x=origin,y=price)) + geom_boxplot()
mod <- lm(price~origin, dataset)
Anova(mod)
# 7
ggplot(dataset,aes(x=origin,y=price)) + geom_boxplot()
mod <- lm(price~origin*food, dataset)
Anova(mod)
# 8 
model.tables(aov(price~origin*food,dataset),'means')
# 9
ggplot(dataset,aes(x=food,y=price,color=store,shape=origin,size=2)) + geom_point() + geom_text(aes(label=price),hjust=0, vjust=-1)
fit <- aov(price~store*origin,dataset)
summary(fit)
TukeyHSD(fit)
# 10-11
fit <- aov(price~store:origin,dataset)
summary(fit)
TukeyHSD(fit)

# 12
dataset <- read.csv("therapy_data.csv")
head(dataset)
# 13
dataset$sex <- as.factor(dataset$sex)
dataset$therapy <- as.factor(dataset$therapy)
dataset$price <- as.factor(dataset$price)
summary(dataset)
# 14
ggplot(dataset,aes(x=therapy,y=well_being)) + geom_boxplot()
summary(aov(well_being~therapy,dataset))
# 15
ggplot(dataset,aes(x=price,y=well_being)) + geom_boxplot() + facet_wrap(~therapy)
summary(aov(well_being~therapy*price,dataset))
# 16
ggplot(dataset,aes(x=price,y=well_being)) + geom_boxplot() + facet_grid(sex~therapy)
summary(aov(well_being~therapy*price*sex,dataset))
# 18
# Да ладно 😒
dataset <- read.csv("shops.csv")
dataset
