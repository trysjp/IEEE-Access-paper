#Where the file is saved
pdf("/home/hadoop/rough/MyGITProjects/PGA_EvaluationArchitecturePaper/Evaluation-architectures-for-big-data/LsuSamsungPaper/Figure/SystemData/Plots/ECHddSsdHdfsWrIops.pdf", family="Times")

#Read data from CSV
data <- read.csv(file="EC_1HDD_HDFSrwps.csv",head=FALSE,sep=",")

x <- 1:length(data$V9)

lt <- c(1,2)

plot(x, data$V19, type='l', col='blue', lwd=2, lty=lt[1], ann=FALSE, cex.axis=1.3)
lines(x, data$V9, col='black', lwd=2, lty=lt[2])

title(xlab="Time (minutes)", cex.lab=1.3)
title(ylab="HDFS write throughput (Bytes/s)", cex.lab=1.3)
#title(main="IOPS Over Time")

legend("topright", c("1SSD/node", "1HDD/node"), col=c("blue","black"), lwd=c(2,2), lty=lt, cex = 1.5)

#print(data$V5)
dev.off()
