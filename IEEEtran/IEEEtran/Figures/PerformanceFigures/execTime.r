#Where the file is saved
pdf("//Users/arghyakusumdas/Documents/MyGitProjects/MyIeeeAccessPaper/IEEEtran/IEEEtran/Figures/PerformanceFigures/execTime.pdf", family="Times")

# Grouped Bar Plot
data <- read.csv(file="execTime.csv",head=TRUE,sep=",")
#print(data)
counts <- table(data$TeraSort,data$WordCount,data$BumbleBeeGraphConstruction,data$BumbleBeeGraphSimplification)
x <- seq(10, 20, 30)

barplot(as.matrix(data), main="", ylim=c(0, 1.3), xlab="Applications",ylab="Execution time normalized to SuperMikeII Baseline", names=c("TeraSort", "WordCount", "BumbleBee \nGraphConstruct", "BumbleBee \nGraphSimplify"), col=c("black", "blue", "red"), beside=TRUE, density=20, angle=c(45,0,0), cex.lab=1.5, cex.axis=1.3, cex.names=1)
barplot(as.matrix(data), add=TRUE, main="", ylim=c(0, 1.3), xlab="Applications",ylab="Execution time normalized to SuperMikeII Baseline", names=c("TeraSort", "WordCount", "BumbleBee \nGraphConstruct", "BumbleBee \nGraphSimplify"), col=c("black","blue", "red"), beside=TRUE, density=20, angle=c(45,90,45), cex.lab=1.5, cex.axis=1.3, cex.names=1)

legend("topright", legend = rownames(data), fill = c("black","blue", "red"), density=20, angle=c(45,0,0), ncol = 1, cex = 1.3)
legend("topright", legend = rownames(data), fill = c("black","blue", "red"), density=20, angle=c(45,90,45), ncol = 1, cex = 1.3)
box()