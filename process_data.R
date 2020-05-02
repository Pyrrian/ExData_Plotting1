#Datascript
library(data.table)
setwd("D:/RData/")

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if(!file.exists("data.zip")){
  download.file(url, "data.zip")
  unzip("data.zip")
}

if(!exists("data_feb")){
  #Import data
  data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
  data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%OS", tz="")
  data$Global_active_power <- as.numeric(data$Global_active_power)
  data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
  
  #Filter only 1 and 2 feb
  data_feb <- subset(data, DateTime >= as.POSIXct("01/02/2007 00:00:00", format="%d/%m/%Y %H:%M:%OS", tz="") & DateTime < as.POSIXct("03/02/2007 00:00:00", "%d/%m/%Y %H:%M:%OS", tz=""))
}

setwd("D:/RData/week4/ExData_Plotting1/")