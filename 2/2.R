# №2 Laba

install.packages("readxl",dep=T)
library(readxl)

#5
data_xlsx <- read.xlsx("data.xlsx")
data_csv <- read.csv2("data.csv")
data_txt <- read.table("data.txt",header = TRUE,sep='\t')
#6
?read.table
#7
data512 <- read.table('data.csv',nrow=8,skip=4,sep=";")
#8
str(data_xlsx)
str(data_csv)
str(data_txt)
# 9
class(data_xlsx)
# 10
data_csv <- as.data.frame(data_csv)
# 11
all.equal(data_csv,data_xlsx)
all.equal(data_csv,data_txt)
# 12
str(data_xlsx)
data_xlsx$Age <-as.integer(data_xlsx$Age)
data_xlsx$Height <-as.integer(data_xlsx$Height)
data_xlsx$Weight <-as.integer(data_xlsx$Weight)
data_xlsx$Health_group <-as.integer(data_xlsx$Health_group)
data_xlsx$Year <-as.integer(data_xlsx$Year)
str(data_xlsx)
str(data_txt)
str(data_csv)
# 13-14 (Po Varianty)
tab <- read.csv("https://data.gov.ru/opendata/7708523530-carantinzone/data-20210913T1134-structure-20210913T1134.csv",encoding='UTF-8') # nolint # nolint
write.csv(tab,file='data_gov.csv',quote= FALSE, row.names = FALSE)
str(tab)
# 15
tab1 <- read.table(file = file.choose(),header = TRUE, sep = ";")
# 16
save(data_xlsx,data_csv,data_txt,tab,file='company.Rda')
# 17-18
write.csv(data_csv,file='company1.csv',quote=FALSE,row.names=FALSE)
write.table(data_txt,file='company2.txt')
# 19 
library(openxlsx)
book <- createWorkbook()
addWorksheet(book,sheetName = 'Первый лист')
writeData(book,data_xlsx,sheet = 'Первый лист')
addWorksheet(book,sheetName = 'Второй лист')
writeData(book,data_csv,sheet = 'Второй лист')
addWorksheet(book,sheetName = 'Третий лист')
writeData(book,data_txt,sheet = 'Третий лист')
addWorksheet(book,sheetName = 'Четвертый лист')
writeData(book,tab,sheet = 'Четвертый лист')
saveWorkbook(book,'company.xlsx',overwrite = TRUE)
# 20
?write.csv()
?write.table()
# HomeWork
install.packages('rattle')
install.packages('Remdr')
install.packages('Deducer')
install.packages('devtools')

devtools::install_github("tidyverse/readr")
