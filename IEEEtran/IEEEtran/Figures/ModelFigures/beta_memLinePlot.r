pdf("//Users/arghyakusumdas/Documents/MyGitProjects/MyIeeeAccessPaper/IEEEtran/IEEEtran/Figures/ModelFigures/beta_mem.pdf")
d <- 0.1

x <- seq(0, 1, by=.0001)

y <- sqrt(x/d)
plot(x, y, col='black', lwd=2, lty=1, type="l", xaxt="n", xlim=c(0, 1.05), ylim=c(0,6),
xlab="Application's memory balance",
ylab="System's memory balance (GB/GHz)")
ticks <- seq(-2, 2, by=1)
labels <- sapply(ticks, function(i) as.expression(bquote(10^ .(i))))
axis(1, at=c(0.01, 0.1, 1, 10, 100), labels=labels)
text(1.03, 3, expression(delta==0.10))

d <- .2
y <-sqrt(x/d)
lines(x, y=y, lwd=4, col="black", lty=1)
text(1.03, 2.1, expression(delta==0.20))
d <- .3
y <-sqrt(x/d)
lines(x, y=y, lwd=4, col="black", lty=1)
text(1.03, 1.7, expression(delta==0.30))
d <- .4
y <-sqrt(x/d)
lines(x, y=y, lwd=4, col="black", lty=1)
text(1.03, 1.5, expression(delta==0.40))

d <- .5
y <-sqrt(x/d)
lines(x, y=y, lwd=4, col="black", lty=1)
text(1.03, 1.3, expression(delta==0.50))






y <- 4/x*x
lines(x, y=y, lwd=4, col="blue", lty=2)

y <- 1/x*x
lines(x, y=y, lwd=4, col="red", lty=4)

legend("topleft", c("Optimal size of DRAM by proposed model", "Gray memory law", "Amdahl memory law"), col=c("black","blue","red"), lwd=c(2,2), lty=c(1,2,4), cex=1.5)