#Dendograma
set.seed(1909)
x<-rnorm(15,mean=rep(1:3,each=5),sd=0.2)
y<-rnorm(15,mean=rep(c(1,2),each=5),sd=0.2)
mydata<-data.frame(x,y)
dist(mydata[1:7,])
dist(mydata[1:7,],method = "manhattan")


modelo.dendro<-as.dendrogram(modelo.hc)
plot_dendro(modelo.dendro,xmin = -0.05) %>% 
  hide_legend()

#Heatmap
set.seed(12345)
dados<-matrix(rnorm(400),
              nrow=40)
heatmap(dados)