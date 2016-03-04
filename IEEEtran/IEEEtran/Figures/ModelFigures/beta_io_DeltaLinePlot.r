pdf("//Users/arghyakusumdas/Documents/MyGitProjects/MyIeeeAccessPaper/IEEEtran/IEEEtran/Figures/ModelFigures/beta_io_Delta.pdf")
g <- 1

#x <- seq(0, 100, by=.0001)

#y <- sqrt(g/x)
#plot(x, y, col='black', lwd=2, lty=1, type="l", xaxt="n", xlim=c(0, 100), ylim=c(0,100),
#xlab="Application's I/O balance",
#ylab="System's I/O balance")
#ticks <- seq(0, 10, by=1)
#labels <- sapply(ticks, function(i) as.expression(bquote(10* .(i))))
#axis(1, at=c(0,10,20,30,40,50,60,70,80,90,100), labels=labels)

require(stats) # for spline
require(graphics)
xx <- -100:100
plot(xx, sqrt(abs(xx)),  col = "red")
lines(spline(xx, sqrt(g/abs(xx)), n=101), col = "pink")