##  plot4.R
# mfrow=c(2,2) creates 4 placeholders for plots, and fills them row by row when a new plot is created.

#open png device
png("plot4.png")
par(mfrow=c(2,2))
# 1st plot
plot(hpc$DateTime,hpc$Global_active_power, type="l", ylab="Global Active Power", xlab="")
#2nd plot
plot(hpc$DateTime, hpc$Voltage ,xlab="datetime", type="l")
#3rd plot
plot(hpc$DateTime,hpc$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(hpc$DateTime,hpc$Sub_metering_2, type="l", col="red")
lines(hpc$DateTime,hpc$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1, col=c("black","blue","red"))
#4th plot
plot(hpc$DateTime,hpc$Global_reactive_power, xlab="datetime", type="l", ylab="Global_reactive_power")
#close png device
dev.off()