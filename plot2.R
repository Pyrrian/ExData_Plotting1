#Import the data
source("process_data.R")

png("plot2.png")

#PLOT 2
with(data_feb, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))

dev.off()