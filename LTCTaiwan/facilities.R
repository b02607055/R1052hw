rm(list = ls(all=TRUE))
library(dplyr)

#首先先列出資料
rawdata = read.csv(
  '3years.csv',
  encoding = 'UTF-8',
  header = T)

#反問資料
df <- rawdata %>% group_by(Area)
result1 = summarise(df, mean(Disabled.Aged.Population), mean(Total.Beds))
write.table(result1, "result1.csv")

df <- rawdata %>% group_by(Area)
result2 = summarise(df, mean(Proportion.of.Aged.Population))
write.table(result2, "result2.csv")

result3 = df %>% filter(Disabled.Aged.Beds.of.every.millon.people > 3000)
write.table(result3, "result3.csv")

