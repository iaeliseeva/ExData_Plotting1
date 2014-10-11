#read and subset data
data_all <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
data <- na.omit(data_all[data_all$Date == "1/2/2007"| data_all$Date == "2/2/2007",])

# plot of Global_active_power and safe as png
png(file = "plot2.png")
  with(data, plot(Global_active_power, type = "l", xaxt = "n", ylab = "Global Active Power(kilowatts)", xlab = ""))
  axis(1, at = c(0,1441,2881), labels = c("Thu","Fri","Sat"))
dev.off()