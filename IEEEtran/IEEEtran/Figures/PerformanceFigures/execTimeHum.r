#Where the file is saved
pdf("//Users/arghyakusumdas/Documents/MyGitProjects/MyIeeeAccessPaper/IEEEtran/IEEEtran/Figures/PerformanceFigures/execTimeHum.pdf", family="Times")

# Grouped Bar Plot
data <- read.csv(file="execTimeHum.csv",head=TRUE,sep=",")
#print(data)
counts <- table(data$HumGraphConstruction,data$HumGraphSimplification)
x <- seq(10, 20, 30)

barplot(as.matrix(data), main="", ylim=c(0, 1.4), xlab="Applications",ylab="Execution time normalized to SuperMikeII Baseline", names=c("Graph Construction", "Graph Simplification"), col=c("red","blue", "black"), beside=TRUE, density=20, angle=c(45,0,0), cex.lab=1.5, cex.axis=1.3, cex.names=1)
barplot(as.matrix(data), add=TRUE, main="", ylim=c(0, 1.4), xlab="Applications",ylab="Execution time normalized to SuperMikeII Baseline", names=c("Graph Construction", "Graph Simplification"), col=c("red","blue", "black"), beside=TRUE, density=20, angle=c(45,90,45), cex.lab=1.5, cex.axis=1.3, cex.names=1)

text(1.5, 1.05, "1")
text(2.5, 1.17, "1.12")
text(3.5, 0.72, "0.67")

text(5.5, 1.05, "1")
text(6.5, 1.07, "1.02")
text(7.5, 0.85, "0.80")

legend("topright", legend = rownames(data), fill = c("red","blue", "black"), density=20, angle=c(45,0,0), ncol = 1, cex = 1.3)
legend("topright", legend = rownames(data), fill = c("red","blue", "black"), density=20, angle=c(45,90,45), ncol = 1, cex = 1.3)
box()