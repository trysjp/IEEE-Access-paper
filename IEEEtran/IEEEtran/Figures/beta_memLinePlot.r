##Where the file is saved
pdf("//Users/arghyakusumdas/Documents/IEEEAccessPaper/IEEEtran/IEEEtran/Figures/beta_mem.pdf")

#Read data from CSV
data <- read.csv(file="beta_mem.csv",head=TRUE,sep=",")

x <- 1:length(data$gamma)

lt <- c(1,2)

plot(x, data$beta, type='l', col='blue', lwd=2, lty=lt[1], ann=FALSE, xaxt='n', xlab="Gamma_{mem}", ylab="Beta_{mem}", cex.lab=1.5, cex.axis=1.5)
lines(x, data$AmdahlMem, col='black', lwd=2, lty=lt[2])

title(xlab="Application's Memory Balance (Gamma_mem)", cex.lab=1.3)
title(ylab="System's Memory Balance (GB/GHz)", cex.lab=1.3)
#title(main="IOPS Over Time")
axis(1,at=c(1,2,3,4,5,6,7), labels=c(".001", ".01", ".1", "1.0", "10", "100", "1000"))

legend("topleft", c("Beta_mem", "Amdahl's Memory Number"), col=c("blue","black"), lwd=c(2,2), lty=lt, cex=1.5)

#print(data$V5)
dev.off()
