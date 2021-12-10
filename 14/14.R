
install.packages('dtwclust')
install.packages('factoextra')
library(dtwclust)
library(factoextra)

dataset <- read.csv("test.csv",encoding="UTF-8")
# Первичная обработка
mydata <- scale(dataset[,2:10])
rownames(mydata) <- dataset$Претендент
head(mydata)
# Определяем необходимое количество кластеров - График "Локоть"
fviz_nbclust(mydata,kmeans,method='silhouette')

data <- tsclust(
  mydata,
  k= 4, # Число кластеров
  type= 'hierarchical',
  distance = "sbd",
  seed = 42,
  control = hierarchical_control(method = "ward.D2"),
  args = tsclust_args(dist=list(widow.size=10))
)
# Строим дендрограмму
fviz_dend(data,k=4, # Число кластеров
          cex=1,
          k_colors=c("#2E9FDF","#00AFBB","#E7B800","#FC4E07"), # Цвета
          color_labels_by_b = TRUE,
          rect = TRUE,
          rect_border = c("#2E9FDF","#00AFBB","#E7B800","#FC4E07"),
          rect_fill = TRUE, lwd=1.2)
# Способ спомощью pvcluster
#install.packages("pvclust")
library(pvclust)

hc <- hclust(dist(mydata), method = "ward.D")
plot(hc,cex=0.9)
rect.hclust(hc, k=4, border = "blue") 
# Вычисление поддержки

iris <- pvclust(t(mydata), method.dist="manhattan", method.hclust="ward.D",
                    nboot=100)
plot(iris)
colnames(mydata) <- paste(abbreviate(mydata,3),colnames(mydata))
# ---------------------------------------------------------------------------

dataset <- read.csv("bear.csv",encoding="UTF-8")
str(dataset) 
mydata <- scale(dataset[,3:5])
rownames(mydata) <- dataset$Марка.пива
summary(mydata)
t(mydata)
fviz_nbclust(mydata,kmeans,method='silhouette')
iris <- pvclust(dist(t(mydata)), method.dist="manhattan", method.hclust="ward.D",
                nboot=100)
plot(iris)

means <- kmeans(mydata,3)
library(cluster)
clusplot(mydata, means$cluster, main='2D representation of the Cluster solution',
         color=TRUE, shade=TRUE, labels=2, lines=0)

# НЕ ДОДЕЛАНА РАБОТА
