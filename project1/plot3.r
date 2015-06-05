plot3<-function(){
  data<-read.table("hpc.txt",sep=";",header=T,na.strings="?")
  data[,1]=as.Date(data[,1],format="%d/%m/%Y")
  data6<-filter(data,Date=="2007-02-01"|Date=="2007-02-02")
  datetime=paste(data6$Date,data6$Time)
  data6=cbind(data6,datetime)
  png("plot3.png",width=480,height=480)
  plot(data6$Sub_metering_1,type="l",ylab="Energy sub meering",xaxt="n",col="black")
  lines(data6$Sub_metering_2,type="l",col="red")
  lines(data6$Sub_metering_3,type="l",col="blue")
  axis(1,at=c(0,1460,2880),labels=c("Thu","Fri","Sat"))
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         col=c("black","red","blue"),lty=c(1,1))
  dev.off()
}