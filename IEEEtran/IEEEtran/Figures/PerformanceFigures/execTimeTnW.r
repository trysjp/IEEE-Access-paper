#Where the file is saved
pdf("//Users/arghyakusumdas/Documents/MyGitProjects/MyIeeeAccessPaper/IEEEtran/IEEEtran/Figures/PerformanceFigures/execTimeTnW.pdf", family="Times")

# Grouped Bar Plot
data <- read.csv(file="execTimeTnW.csv",head=TRUE,sep=",")
#print(data)
counts <- table(data$TeraSort,data$WordCount)
x <- seq(10, 20, 30)

barplot(as.matrix(data), main="", ylim=c(0, 1.4), xlab="Applications",ylab="Execution time normalized to SuperMikeII Baseline", names=c("TeraSort", "WordCount"), col=c("black", "blue", "red"), beside=TRUE, density=20, angle=c(45,0,0), cex.lab=1.5, cex.axis=1.3, cex.names=1)
barplot(as.matrix(data), add=TRUE, main="", ylim=c(0, 1.4), xlab="Applications",ylab="Execution time normalized to SuperMikeII Baseline", names=c("TeraSort", "WordCount"), col=c("black","blue", "red"), beside=TRUE, density=20, angle=c(45,90,45), cex.lab=1.5, cex.axis=1.3, cex.names=1)

text(1.5, 1.05, "1")
text(2.5, 0.81, "0.76")
text(3.5, 0.42, "0.37")

text(5.5, 1.05, "1")
text(6.5, 0.84, "0.79")
text(7.5, 0.40, "0.35")


legend("topright", legend = rownames(data), fill = c("black","blue", "red"), density=20, angle=c(45,0,0), ncol = 1, cex = 1.3)
legend("topright", legend = rownames(data), fill = c("black","blue", "red"), density=20, angle=c(45,90,45), ncol = 1, cex = 1.3)
box()