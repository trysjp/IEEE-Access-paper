##Where the file is saved
pdf("/home/hadoop/rough/MyGITProjects/PGA_EvaluationArchitecturePaper/Evaluation-architectures-for-big-data/LsuSamsungPaper/Figure/PerormanceData/Plots/SSDHDDDiffNode.pdf")

#Read data from CSV
data <- read.csv(file="SSDHDDDiffNode.csv",head=TRUE,sep=",")

x <- 1:length(data$SSD)

lt <- c(1,2)

plot(x, data$SSD, type='l', col='blue', lwd=2, lty=lt[1], ann=FALSE, xaxt='n', xlab="Total number of DataNode : Number of Disks used per DataNode", ylab="Execution Time (s)", cex.lab=1.5, cex.axis=1.5)
lines(x, data$HDD, col='black', lwd=2, lty=lt[2])

title(xlab="Total number of DataNode : Number of Disks used per DataNode", cex.lab=1.3)
title(ylab="Execution time (s)", cex.lab=1.3)
#title(main="IOPS Over Time")
#axis(1,at=c(1,2,3), labels=c("2-DN:\n7-Disks/DN", "7-DN:\n2-Disks/DN", "15-DN:\n1-Disk/DN"))

legend("topright", c("CPU utilization", "I/O wait"), col=c("blue","black"), lwd=c(2,2), lty=lt, cex=1.5)

#print(data$V5)
dev.off()
