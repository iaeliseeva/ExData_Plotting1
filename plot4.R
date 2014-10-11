#read and subset data
data_all <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
data <- na.omit(data_all[data_all$Date == "1/2/2007"| data_all$Date == "2/2/2007",])

# make plots and safe as png
png(file = "plot4.png")
par(mfcol = c(2,2), mar = c(4,4,2,2))

with(data, plot(Global_active_power, type = "l", xaxt = "n", ylab = "Global Active Power(kilowatts)", xlab = ""))
axis(1, at = c(0,1441,2881), labels = c("Thu","Fri","Sat"))

with(data, plot(Sub_metering_1, type = "l", xaxt = "n", ylab = "Energy sub metering", xlab = ""))
with(data, lines(Sub_metering_2, type = "l", col = "red"))
with(data, lines(Sub_metering_3, type = "l", col = "blue"))
axis(1, at = c(0,1441,2881), labels = c("Thu","Fri","Sat"))
legend("topright", bty = "n", y.intersp = 0.75, lty=c(1,1,1) , col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

with(data, plot(Voltage, type = "l", xaxt = "n", ylab = "Voltage", xlab = "datetime"))
axis(1, at = c(0,1441,2881), labels = c("Thu","Fri","Sat"))

with(data, plot(Global_reactive_power, type = "l", xaxt = "n", ylab = "Global_reactive_power", xlab = "datetime"))
axis(1, at = c(0,1441,2881), labels = c("Thu","Fri","Sat"))

dev.off()