#read and subset data
data_all <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
data <- na.omit(data_all[data_all$Date == "1/2/2007"| data_all$Date == "2/2/2007",])

# plot of Energy sub metering and safe as png
png(file = "plot3.png",bg = "transparent")
with(data, plot(Sub_metering_1, type = "l", xaxt = "n", ylab = "Energy sub metering", xlab = ""))
with(data, lines(Sub_metering_2, type = "l", col = "red"))
with(data, lines(Sub_metering_3, type = "l", col = "blue"))
axis(1, at = c(0,1441,2881), labels = c("Thu","Fri","Sat"))
legend("topright",  lty=c(1,1,1) , col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()