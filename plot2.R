## plot2.R
png(filename= "plot2.png") 
plot(hpc$DateTime,hpc$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
