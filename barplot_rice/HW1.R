rm(list = ls(all = TRUE))
library("png")
library("animation")

rawData = read.csv('deficit.csv',header = TRUE)

for (yid in c(1:length(rawData[,1])))
{
  barplot(as.matrix(rawData[yid,c(-1,-2)]),
          main = paste0("total deficit of Food Stabilization Fund is ",rawData[yid,2]," in ",rawData[yid,1]))
}
