library(data.table)
house<-fread("household_power_consumption.txt")
power<-as.data.frame(house)
feb<-power[66637:69516,]
gap<-as.numeric(feb$Global_active_power)
ts<-ts(gap,start=1,end=2,frequency=2880)
png(file="Plot2.png")
plot(ts,ann=F,xaxt="n")
axis(1, 1,labels="Thu");axis(1, 1.5,labels="Fri");axis(1, 2,labels="Sat")
title(ylab="Global Active Power (kilowatts)")
dev.off()