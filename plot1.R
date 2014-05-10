library(data.table)
house<-fread("household_power_consumption.txt")
power<-as.data.frame(house)
feb<-power[66637:69516,]
gap<-as.numeric(feb$Global_active_power)
png(file="Plot1.png")
hist(gap,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()