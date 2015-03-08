plot3 <- function() {
	data<-read.table("household_power_consumption.txt",header=TRUE,na.strings="?",sep=";")

	data_s<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ),]

	data_s$DateTime<-strptime(paste(data_s$Date,data_s$Time),"%d/%m/%Y %H:%M:%S")

	png(filename = "plot3.png", width = 480, height = 480, bg="transparent")


	with(data_s, plot(DateTime, Sub_metering_1, 
	ylab = "Energy sub metering",
	xlab = "",
	type = "l", col="black"))

	with(data_s,points(DateTime, Sub_metering_2, col = "red",type = "l"))
	with(data_s, points(DateTime, Sub_metering_3, col = "blue",type = "l"))

	legend("topright", lty=1,col = c("black","blue", "red"), 
	legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

	dev.off()


}