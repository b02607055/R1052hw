rm(list = ls(all=TRUE))
library(dplyr)

#首先先列出床數資料
rawdata = read.table('result1.csv',
                     encoding = 'UTF-8',header = T)
df <- rawdata %>% group_by(Area)


#再列出服務人員資料
rdata = read.csv('1.csv',
                 header = TRUE)
df1 <- rdata %>% group_by(Area)


#用join結合兩個表格
newTable = rawdata %>% left_join(rdata, by = c("Area" = "Area"))
df2 <- newTable [2:9]
write.table(df2, "newTable.csv")

#想知道失能老年人口、床數和人員的相關性
df3 <- cor(df2, use="complete.obs", method="kendall") 
write.table(df3, "cor.csv")
