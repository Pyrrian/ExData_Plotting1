#Import the data
source("process_data.R")

png("plot4.png")

#PLOT 4
par(mfrow=c(2,2))
with(data_feb, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))
with(data_feb, plot(DateTime, Voltage, type="l"))

with(data_feb, plot(DateTime, Sub_metering_1, type="l", ylab = "Energy Sub Metering"))
with(data_feb, lines(DateTime, Sub_metering_3, col="blue"))
with(data_feb, lines(DateTime, Sub_metering_2, col="red"))
legend("topright", col=c("black", "red", "blue"), legend=c("Submetering_1", "Submetering_2", "Submetering_3"), lty = 1, box.lty=0, inset = .01)

with(data_feb, plot(DateTime, Global_reactive_power, type="l"))

par(mfrow=c(1,1))

dev.off()