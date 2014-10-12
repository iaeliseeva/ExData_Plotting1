  #read and subset data
data_all <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
data <- data_all[data_all$Date == "1/2/2007"| data_all$Date == "2/2/2007",]

  # plot histogram of Global_active_power and safe as png
png(file = "plot1.png",bg = "transparent")
  hist(data$Global_active_power, xlab = "Global Active Power(kilowatts)", main = "Global Active Power", col = "red")
dev.off()