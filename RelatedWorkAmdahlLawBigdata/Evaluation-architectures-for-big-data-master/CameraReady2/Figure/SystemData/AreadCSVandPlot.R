#Where the file is saved
pdf("/home/hadoop/rough/MyGITProjects/PGA_EvaluationArchitecturePaper/Evaluation-architectures-for-big-data/CameraReady/Figure/SystemData/Plots/ECCPUSSD.pdf", family="Times")

#Read data from CSV
data <- read.csv(file="EC_1HDD_CPUCopy.csv",head=FALSE,sep=",")

x <- 1:length(data$V4)

lt <- c(1,2)

plot(x, data$V4, type='l', col='blue', lwd=2, lty=lt[1], ann=F, xaxt='n', yaxt='n')
lines(x, data$V5, col='black', lwd=2, lty=lt[2])
axis(1, cex.axis=1.5, padj=.35)
axis(2,cex.axis=1.5, padj=.35)
title(xlab="Time (minutes)", cex.lab=1.5)
title(ylab="CPU usage (%)", cex.lab=1.5, mgp=c(2.7,1,1))

legend("topright", c("CPU utilization", "I/O wait"), col=c("blue","black"), lwd=c(2,2), lty=lt, cex = 1.5)

dev.off()
