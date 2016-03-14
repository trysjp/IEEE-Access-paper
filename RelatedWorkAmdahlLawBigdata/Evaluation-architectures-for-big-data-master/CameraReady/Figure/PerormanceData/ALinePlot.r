##Where the file is saved
pdf("/home/hadoop/rough/MyGITProjects/PGA_EvaluationArchitecturePaper/Evaluation-architectures-for-big-data/CameraReady/Figure/PerormanceData/Plots/SSDHDDDiffNode.pdf")

#Read data from CSV
data <- read.csv(file="SSDHDDDiffNode.csv",head=TRUE,sep=",")

x <- 1:length(data$SSD)

lt <- c(1,2)

plot(x, data$SSD, type='l', col='blue', lwd=2, lty=lt[1], ann=F, xaxt='n', yaxt='n')
lines(x, data$HDD, col='black', lwd=2, lty=lt[2])
axis(1,at=c(1,2,3), labels=c("2-DN:\n7-Disks/DN", "7-DN:\n2-Disks/DN", "15-DN:\n1-Disk/DN"), cex.axis=1.5, tck=0, padj=.65)
axis(2,cex.axis=1.5, tck=0, padj=.35)
title(xlab="", cex.lab=1.3)
title(ylab="Execution time (s)", cex.lab=1.5, mgp=c(2.5,1,1))
legend("topright", c("SSD", "HDD"), col=c("blue","black"), lwd=c(2,2), lty=lt, cex=1.5)
dev.off()
