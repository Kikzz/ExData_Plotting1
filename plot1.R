##  plot1.R


png(filename= "plot1.png") 
hist(hpc$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()