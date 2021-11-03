# 6 Laba
# 1
install.packages("tidyverse")
library(readr)
# 3
company <- read.csv('company.csv',sep=";",header=TRUE)
# 4-5
str(dats2)
# 6
install.packages('reshape2')
library(reshape2)
# 7-8 
company1 <- melt(company)
head(company1)
# 9-12
company2 <- dcast(company1, Name ~ variable)
head(company2,10)
library(dplyr)
company[4:8,]
# 13
company %>% head
head(company,6) %>% filter 
# 14.1 
c <- company %>% filter(Experience.in.ooo<5)
# 14.2
c <- company %>% head(filter(Experience.in.ooo<4 & Age > 25),6)
# 14.3
c <- company %>% slice(2:6)
# 15.1 
company %>% arrange(Name, Age)
# 15.2
company %>% arrange(desc(Name), Age %>% desc)
# 16
company %>% select(Name, Age, Experience.in.ooo)
# 17
company %>% mutate(Experience.in.ooo = Total.work.experience * Experience.in.ooo)
# 18-19
library(gapminder)
vvp <- gapminder
# 20
vvp52 <- filter(vvp, year == "1952", lifeExp > "60")
# 21
filter(vvp, year == 1952)%>%arrange(desc(pop))
# 22
vvp %>% select(gdpPercap, continent, year)
# 23
vvp <- vvp %>% mutate(prodjiz = lifeExp * 365)
# 24
group_by(vvp,country) %>% summarise(sredniivvp = mean(gdpPercap))%>% arrange(desc(sredniivvp))
# 25
vvp80 <- subset(vvp, year < "1980")
vvp81 <- subset(vvp, year > "1980")
# 26
vvp%>%select(lifeExp, country)
# 27
group_by(vvp,country)%>%summarise(srprodjiz = mean(prodjiz))
# 28
inner_join(vvp80,vvp81 , by= c("country"))
