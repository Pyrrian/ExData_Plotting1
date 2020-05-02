
#Import the data
source("process_data.R")

png("plot1.png")

#PLOT 1
with(data_feb, hist(Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main="Global Active Power"))

dev.off()

