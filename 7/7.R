# 7 laba
# 1-5
plot(sin, -pi, 2 * pi, main = "Function Sin(X)", xlab = "x", ylab = "sin(x)", sub = "Ranage [-pi,2PI]", lwd = 3, col = "orange")
# 6
abline(0, 0, col = "red", lwd = 2, lty = 4)
# 7-8
?Devices
# 9
abc <- par(no.readonly = TRUE)
par(pin = c(2, 3))
par(lwd = 1.5, cex = 2)
par(cex.axis = .75, font.axis = 2)
par(mfrow = c(1, 2))
plot(cos, -pi, 2 * pi)
plot(sin, -pi, 2 * pi)
# 10
data(mtcars)
# 11
countscarb <- table(mtcars$carb)
barplot(countscarb, xlab = "количеством карбюраторов")
countscarb <- table(mtcars$carb, mtcars$cyl)
transmissioncountscarb <- table(mtcars$vs, mtcars$carb)
barplot(table(mtcars$carb, mtcars$cyl), legend.text = T, las = 2, ylim = c(0, 15), xlab = "cyl", ylab = "carb")
# 12-13
barplot(Transmissioncountscarb, legend.text = c("automatic", "manual"), beside = TRUE)
barplot(countscarb, horiz = TRUE, las = 1)
# 14
dotchart(mtcars$mpg, labels = mtcars$wg, xlab = "Миль/галлон", cex = 0.8, ylab = "Вес")
# 15
barplot(Transmissioncountscarb, names.arg = c("1 carbs", "2 carbs", "3 carbs", "4 carbs", "6 carbs", "8 carbs"), legend.text = c("automatic", "manual"), beside = TRUE)
# 16
install.packages("vcd")
library(vcd)
spin <- table(mtcars$qsec, mtcars$gear)
spine(spin, main = "Cпинограмма")
install.packages("plotrix")
library(plotrix)
group1 <- which(mtcars$vs == 0 & mtcars$cyl == 4)
group2 <- which(mtcars$vs == 0 & mtcars$cyl == 6)
group3 <- which(mtcars$vs == 0 & mtcars$cyl == 8)
group4 <- which(mtcars$vs == 1 & mtcars$cyl == 4)
group5 <- which(mtcars$vs == 1 & mtcars$cyl == 6)
groups <- c(group1, group2, group3, group4, group4, group5)
length(groups)
# 17
names <- 1:42
pie3D(groups, labels = names, explode = 0.3, main = "Трёхмерная круговая диаграмма")
# 18
boxplot(mpg ~ cyl, data = mtcars, xlab = "mpg", ylab = "cyl", col = 4)
# 19
hist(mtcars$disp, xlab = " Объем двигателя ", main = "Гистограмма объема двигателя", col = 4, freq = 3)
# 21
plot(density(mtcars$disp), main = "Плотность распределения")