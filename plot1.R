setwd("cleaningdata")

t5m=read.table("household_power_consumption.txt",header = TRUE,nrows =5,sep=";")
names_of_cols=colnames(t5m)

t2d=read.table("household_power_consumption.txt",nrows =2880,sep=";",skip=66637)
colnames(t2d)=names_of_cols

#--------------------------------------------------------------
png(file="plot1.png",width=480, height=480, bg = "transparent")
#--------------------------------------------------------------
hist(t2d$Global_active_power, 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", 
     col="red")
axis(side=2, at=c(0,200,600,800,1000,1200))
#--------------------------------------------------------------
dev.off()
#--------------------------------------------------------------
