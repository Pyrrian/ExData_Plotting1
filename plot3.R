#Import the data
source("process_data.R")

png("plot3.png")

#PLOT 3
with(data_feb, plot(DateTime, Sub_metering_1, type="l", ylab = "Energy Sub Metering"))
with(data_feb, lines(DateTime, Sub_metering_3, col="blue"))
with(data_feb, lines(DateTime, Sub_metering_2, col="red"))
legend("topright", col=c("black", "red", "blue"), legend=c("Submetering_1", "Submetering_2", "Submetering_3"), lty = 1)

dev.off()