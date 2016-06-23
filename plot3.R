## plot3.R

# lines() adds drawings to the existong plot.
# to get lines in the legend, use lwd=x 

png("plot3.png")
plot(hpc$DateTime,hpc$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(hpc$DateTime,hpc$Sub_metering_2, type="l", col="red")
lines(hpc$DateTime,hpc$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1, col=c("black","blue","red"))
dev.off()