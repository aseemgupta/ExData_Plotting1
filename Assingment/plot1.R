plot1 <- function() {
	data<-read.table("household_power_consumption.txt",header=TRUE,na.strings="?",sep=";")

	data_s<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ),]

	data_s$DateTime<-strptime(paste(data_s$Date,data_s$Time),"%d/%m/%Y %H:%M:%S")

	png(filename = "plot1.png", width = 480, height = 480, bg="transparent")

	hist(data_s$Global_active_power,  main = "Global Active Power", xlab = "Global Active Power (kilowatts)",col = "Red")

	dev.off()

}