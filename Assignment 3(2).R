
Company_ID<-c(1:110)
head(Company_ID)

Product_ID<- c(paste(sample(LETTERS,10), as.integer(abs(rnorm(110,288,8))),sep="~"))
head(Product_ID)

Demand=as.integer(abs(rnorm(110,1888,260)))
head(Demand)

Sale<-c(as.integer(abs(rnorm(110,13955678,366))))
head(Sale)

sfl.data<-data.frame(Companies_ID, Product_ID, Demand, Sale)
head(sfl.data)

a<- lapply(sfl.data[3], mean)
b<- lapply(sfl.data[4], mean)
sfl.data$Demand[sfl.data$Demand <= a] <- NA
sfl.data
c<- data.frame(na.omit(sfl.data))
c$Sale[c$Sale <= b]<- NA
c
