setwd("cleaningdata")

t5m=read.table("household_power_consumption.txt",header = TRUE,nrows =5,sep=";")
names_of_cols=colnames(t5m)

t2d=read.table("household_power_consumption.txt",nrows =2880,sep=";",skip=66637)
colnames(t2d)=names_of_cols

#--------------------------------------------------------------
png(file="plot4.png",width=480, height=480, bg = "transparent")
#--------------------------------------------------------------
par(mfrow=c(2,2))
x=1:2880
##---------------- plot(1,1)
plot(x,
     t2d$Global_active_power,
     type="l",
     axes=FALSE,
     xlab=" ",
     ylab="Global Active Power"
    )
axis(1,c(1,1440,2880),c("Thu","Fri","Sat"))
axis(2,c(0,2,4,6))
box()
##---------------- plot(1,2)
plot(x,
     t2d$Voltage,
     type="l",
     axes=FALSE,
     xlab="datetime",
     ylab="Voltage"
    )
axis(1,c(1,1440,2880),c("Thu","Fri","Sat"))
axis(2,c(234,238,242,246))
box()
##---------------- plot(2,1)
plot(x,
     t2d$Sub_metering_1,
     type="n",
     axes=FALSE,
     xlab=" ",
     ylab="Energy sub metering"
    )
axis(1,c(1,1440,2880),c("Thu","Fri","Sat"))
axis(2,c(0,10,20,30))
box()
lines(t2d$Sub_metering_1,col="black")
lines(t2d$Sub_metering_2,col="red")
lines(t2d$Sub_metering_3,col="blue")
legend.txt=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend.col=c("black","red","blue")
legend("topright",legend=legend.txt,fill,col=legend.col,lty=c(1,1))
##---------------- plot(2,2)
plot(x,
     t2d$Global_reactive_power,
     type="l",
     axes=FALSE,
     xlab="datetime",
     ylab="Global_reactive_power"
    )
axis(1,c(1,1440,2880),c("Thu","Fri","Sat"))
axis(2,c(0.0,0.1,0.2,0.3,0.4,0.5))
box()
#--------------------------------------------------------------
dev.off()
#--------------------------------------------------------------
