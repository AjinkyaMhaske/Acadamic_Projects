x1<- read.csv("c:/file.csv",header=TRUE,stringsAsFactors=FALSE)
y1<-c(x1$sell)
gr1<-barplot(x1$sell,names.arg=x1$type,ylim=c(0,500),main="Cloth Mart Analysis",
             col=c("ORANGE","violet","YELLOW","BLACK","GREEN","darkblue","RED"))
text(gr1,x1$sell+20,labels=round(x1$sell,1),col="black")
hist(y1)

labels<-c(x1$type)
piepercent<-round(100*y1/sum(y1), 1)
pie(y1,labels=piepercent,main = "%file sell",radius=0.8,
    col=c("GREEN","darkblue","RED","ORANGE","violet","YELLOW","BLACK"))
legend("topright",legend=c(labels),cex =0.8,
       fill=c("GREEN","darkblue","RED","ORANGE","violet","YELLOW","BLACK"))

m1<- read.csv("c:/file.csv",header=TRUE)[,c('cost')]
n1<-x1$sell
c1<-m1*n1

gr1<-barplot(c1,names.arg=x1$type,ylim=c(0,12000),main="Total Buying Cost",
             col=c("GREEN","darkblue","ORANGE","violet","RED","YELLOW","BLACK"))
text(gr1,c1+400,labels=round(c1),col="black")
scatter.smooth(y1)

m2<- read.csv("c:/file.csv",header=TRUE)[,c('sellp')]
n2<-x1$sell
c2<-m2*n2

gr1<-barplot(c2,names.arg=x1$type,ylim=c(0,20000),main="Total Cost After Sell",
             col=c("darkblue","RED","GREEN","ORANGE","violet","YELLOW","BLACK"))
text(gr1,c2+500,labels=round(c2),col="black")

c3<-c2-c1
gr1<-barplot(c3,names.arg=x1$type,ylim=c(0,5000),main="Total Profit Earn",
             col=c("GREEN","darkblue","RED","BLACK","ORANGE","violet","YELLOW"))
text(gr1,c3+200,labels=round(c3),col="black")

