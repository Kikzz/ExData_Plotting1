## Libraries
require(data.table)

## My Working dir
setwd("~/GitHub/ExData_Plotting1")

## Strings for source files
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
filename <- "household_power_consumption.txt"        

## Functions

## Download, unzip and delete zip file.
dlZipFile <- function(url){
        download.file(url, method="curl",destfile="data.zip") 
        unzip("data.zip")
        unlink("data.zip")
}


##  MAIN SCRIPT  ##

## Download if y. Creates "household_power_consumption.txt" in your working directory
n <- readline(prompt="Download files? (y/n)\n")
if (n=="y"){
        dlZipFile(url)
}

## Read file into R, subset and delete variable with full data.
rawdata <- fread(filename, na.strings="?")
hpc <- subset(rawdata,Date=="1/2/2007"|Date=="2/2/2007")

## Add a new DateTime column, containing Date and Time in POSIXct format (YYYY-MM-DD HH:MI:SS)
DateTime <- strptime(paste(hpc$Date,hpc$Time, sep="-"), format="%d/%m/%Y-%H:%M:%S")
suppressWarnings(hpc <- cbind(hpc,DateTime))


## draw plots
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

cat("\nYou can now find plot1 -> plot4.png in your working directory\n")

##Cleanup
n <- readline(prompt="Do you want to remove created variables from memory? (y/n)\n")
if (n=="y"){
        rm(rawdata,n,url,filename, DateTime, dlZipFile, hpc)
}

#unlink(filename)