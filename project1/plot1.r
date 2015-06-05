plot1<-function(){
data<-read.table("hpc.txt",sep=";",header=T,na.strings="?")
data[,1]=as.Date(data[,1],format="%d/%m/%Y")
data2<-filter(data,Date=="2007-02-01"|Date=="2007-02-02")
png("plot1.png")
hist(data2$Global_active_power,
     col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")
dev<-dev.off()
}