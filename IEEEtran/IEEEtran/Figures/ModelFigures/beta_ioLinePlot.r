pdf("//Users/arghyakusumdas/Documents/MyGitProjects/MyIeeeAccessPaper/IEEEtran/IEEEtran/Figures/ModelFigures/beta_io.pdf")
d <- 30

x <- seq(0, 1, by=.0001)

y <- sqrt(x/d)
plot(x, y, col='black', lwd=2, lty=1, type="l", xaxt="n", xlim=c(0, 1.05), ylim=c(0,.5),
xlab="Application's I/O balance",
ylab="System's I/O balance")
ticks <- seq(-2, 2, by=1)
labels <- sapply(ticks, function(i) as.expression(bquote(10^ .(i))))
axis(1, at=c(0.01, 0.1, 1, 10, 100), labels=labels)
text(1.03, .171, "d = 30")

d <- 10
y <-sqrt(x/d)
lines(x, y=y, lwd=4, col="black", lty=1)
text(1.03, .3, "d = 10")
d <- 20
y <-sqrt(x/d)
lines(x, y=y, lwd=4, col="black", lty=1)
text(1.03, .21, "d = 20")
d <- 40
y <-sqrt(x/d)
lines(x, y=y, lwd=4, col="black", lty=1)
text(1.03, .149, "d = 40")

d <- 50
y <-sqrt(x/d)
lines(x, y=y, lwd=4, col="black", lty=1)
text(1.03, .13, "d = 50")




y <- x/8
lines(x, y=y, lwd=4, col="blue", lty=2)

y <- 0.125/x*x
lines(x, y=y, lwd=4, col="red", lty=4)

legend("topleft", c("Optimal I/O bandwidth by proposed model", "Gray I/O law", "Amdahl I/O law"), col=c("black","blue","red"), lwd=c(2,2), lty=c(1,2,4), cex=1.5)
