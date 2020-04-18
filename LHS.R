###TRUE###
integrand<-function(x){exp(-x^2/2)/sqrt(2*pi)}
integrate(integrand,0,1)

####LHS inte###
inte1<-matrix(0,1000,1)
for (i in 1:1000) {
  LHD<-matrix(sample(1:100, 100))
  U<-matrix(runif(100,0,1),100,1)
  LHS<-(LHD-U)/100
  y<-exp(-LHS^2/2)/sqrt(2*pi)
  inte1[i,]<-mean(y)
}
win.graph(width=4.875,height=3,pointsize=8)
boxplot(inte1)

###uniform inte###
inte2<-matrix(0, nrow = 1000, ncol = 1) 
for (i in 1:1000) {
  x<-runif(100,0,1)
  y<-exp(-x^2/2)/sqrt(2*pi)
  inte2[i,]<-mean(y)
}
win.graph(width=4.875,height=3,pointsize=8)
boxplot(inte2) 
  


