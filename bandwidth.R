fc<-read.csv("csvData",header=T,sep=";")

jpeg(file = "bandwidth.jpg", width=1680,height=1050)
boxplot(split(fc[,2],fc[,1]))

dev.off()
