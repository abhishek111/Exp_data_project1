plot2<-function(){
  data<-read.table("hpc.txt",sep=";",header=T,na.strings="?")
  data[,1]=as.Date(data[,1],format="%d/%m/%Y")
  data6<-filter(data,Date=="2007-02-01"|Date=="2007-02-02")
  png("plot2.png")
  plot(data6$Global_active_power,type="l",xaxt="n",ylab = "Global Active Power (kilowatts)")
  axis(1,at=c(0,1460,2880),labels=c("Thu","Fri","Sat"))
  dev<-dev.off()
}