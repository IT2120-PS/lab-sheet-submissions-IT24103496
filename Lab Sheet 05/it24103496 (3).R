
setwd("C:\\Users\\it24103496\\Downloads")

Delivery_Times <-read.table("Exercise - Lab 05.txt",header = TRUE ,sep=",")
fix(Delivery_Times)


names(Delivery_Times)<-c("X1")

attach(Delivery_Times)


hist(X1,main="Histograms For Delivery Times")

summary(X1)
histogram <-hist(X1,main="Histogram of X1",breaks = seq(20,70,lengt=9))
histogram

breaks <- round(histogram$breaks)
breaks

freq <-histogram$counts

class<- c()
for(i in 1 : length(breaks)-1){
  class[i] <-paste0("{",breaks[i],",",breaks[i+1],"}")}
class
cbind(classes = class ,frequency = freq)
lines(mids,freq)

plot(mids,freq,type="o",
     main="freq polygon for no delivery Time",
     ylab="X1",xlab ="Delivery Time";
     ylim =c(0,max(freq)))

cum.freq <-cumsum(freq)
cum.freq

new <-c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]= 0
  }else{
    new[i]= cum.freq[i-1]
    
  }
}

new
plot(breaks,new,type="o",
main ="freq poloygon for Delvery Time"
ylabs="cummulative frequency",xlab= "delivery Time",
ylim= c(0,max(cum.freq)))


