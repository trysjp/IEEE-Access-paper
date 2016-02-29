##Where the file is saved
pdf("//Users/arghyakusumdas/Documents/IEEEAccessPaper/IEEEtran/IEEEtran/Figures/beta_io.pdf")

#Read data from CSV
data <- read.csv(file="beta_io.csv",head=TRUE,sep=",")

x <- 1:length(data$gamma)

lt <- c(1,2,3)

plot(x, data$beta, type='l', col='blue', lwd=2, lty=lt[1], ann=FALSE, xaxt='n', xlab="Gamma_{io}", ylab="Beta_{io}", cex.lab=1.5, cex.axis=1.5)
lines(x, data$AmdahlIo, col='black', lwd=2, lty=lt[2])
#lines(x, data$GrayIo, col='red', lwd=2, lty=lt[3])

title(xlab="Application's I/O Balance (Gamma_io)", cex.lab=1.3)
title(ylab="System's I/O Balance (GBPS/GHz)", cex.lab=1.3)
axis(1,at=c(1,2,3,4,5), labels=c("0.001", "0.01", "0.1", "1.0", "10"))

legend("topleft", c("Beta_io", "Amdahl's I/O Number"), col=c("blue","black"), lwd=c(2,2), lty=lt, cex=1.5)

dev.off()
