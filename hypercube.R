dm<-c() 
for (n in 1:30) {
	dists<-c()
	for (i in 1:10000) {
		      a1<-runif(n)
		      a2<-runif(n)
		      dist<-sqrt(sum((a1-a2)**2))
		      dists<-c(dists, dist)
	}
	mean.dist<-mean(dists)
	dm<-c(dm, mean.dist)
}
png("Second Vector Plot.png")
plot(dm, main= "Second Vector Plot", xlab="number of dimensions", ylab="average distance")
x=dev.off() 