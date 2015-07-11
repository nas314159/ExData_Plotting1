setwd("cleaningdata")

t5m=read.table("household_power_consumption.txt",header = TRUE,nrows =5,sep=";")
names_of_cols=colnames(t5m)

t2d=read.table("household_power_consumption.txt",nrows =2880,sep=";",skip=66637)
colnames(t2d)=names_of_cols

#--------------------------------------------------------------
png(file="plot2.png",width=480, height=480, bg = "transparent")
#--------------------------------------------------------------
x=1:2880
plot(x,
     t2d$Global_active_power,
     type="l",
     axes=FALSE,
     xlab=" ",
     ylab="Global Active Power (kilowatts)"
    )
axis(1,c(1,1440,2880),c("Thu","Fri","Sat"))
axis(2,c(0,2,4,6))
box()
#--------------------------------------------------------------
dev.off()
#--------------------------------------------------------------
