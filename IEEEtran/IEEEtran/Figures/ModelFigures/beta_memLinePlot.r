pdf("//Users/arghyakusumdas/Documents/MyGitProjects/MyIeeeAccessPaper/IEEEtran/IEEEtran/Figures/ModelFigures/beta_mem.pdf")
d <- 0.1

x <- seq(0, 1, by=.0001)

y <- sqrt(x/d)
plot(x, y, col='black', lwd=2, lty=1, type="l", xaxt="n", xlim=c(0, 1), ylim=c(0,6),
xlab="Application's I/O balance",
ylab="System's I/O balance")
ticks <- seq(-2, 2, by=1)
labels <- sapply(ticks, function(i) as.expression(bquote(10^ .(i))))
axis(1, at=c(0.01, 0.1, 1, 10, 100), labels=labels)

y <- 4/x*x
lines(x, y=y, lwd=4, col="blue", lty=2)

y <- 1/x*x
lines(x, y=y, lwd=4, col="red", lty=4)

legend("topleft", c("Optimal by Proposed model", "Gray-revised I/O number", "Amdahl I/O number"), col=c("black","blue","red"), lwd=c(2,2), lty=c(1,2,4), cex=1.5)