#Where the file is saved
pdf("/Users/arghyakusumdas/Documents/MyGitProjects/MyIeeeAccessPaper/IEEEtran/IEEEtran/Figures/SystemFigures/BombusGrConsIPS.pdf", family="Times")

#Read data from CSV
data <- read.csv(file="BombusGrConsIPS.csv",head=FALSE,sep=",")

x <- 1:length(data$V1)

lt <- c(4,2,1)

plot(x, data$V1, type='l', col='red', lwd=4, lty=lt[1], ann=F, xaxt='n', yaxt='n',ylim=c(0,1500000000000))
lines(x, data$V2, col='blue', lwd=4, lty=lt[2])
lines(x, data$V3, col='black', lwd=4, lty=lt[3])
axis(1, cex.axis=1.5, padj=.35)
axis(2,cex.axis=1.5, padj=.35)
title(xlab="Time (minutes)", cex.lab=1.5)
title(ylab="#CPUInstructions/second", cex.lab=1.5, mgp=c(2.7,1,1))

legend("topright", c("SuperMikeII(15nodes)", "SwatIII(8nodes)", "CeresII(25nodes)"), col=c("red","blue","black"), lwd=c(4,4), lty=lt, cex = 1.4)

dev.off()




#TeraSortIPS=default
#WordCountIPS=default
#BombusGrConsIPS=5000000000
#BombusGrSimpIPS=default


#TeraSortIO=10000000000
#WordCountIO=10000000000
#BombusGrConsIO=5000000000
#BombusGrSimpIO=2000000000
