#####################################################################
# Set Working Directory
#####################################################################
setwd("C:\\Coursera\\Exploratory Data Analysis with R\\Week1\\Course Project 1\\ExData_Plotting1")

#####################################################################
# Check is file exist. If not, download from the source
#####################################################################

if(!file.exists("exdata-data-household_power_consumption.zip")) {
  temp <- tempfile()
  download.file("http://d396qusza40orc.cloudf.powerront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
  file <- unzip(temp)
  unlink(temp)
}

#####################################################################
# Read file into table
#####################################################################

t.power <- read.table(file, header=T, sep=";")
t.power$Date <- as.Date(t.power$Date, format="%d/%m/%Y")

#####################################################################
# Select only 2 days from table into data frame
#####################################################################

df.power <- t.power[(t.power$Date=="2007-02-01") | (t.power$Date=="2007-02-02"),]

#####################################################################
# Convert CHAR to NUMERIC and transform DATE into standard format
#####################################################################

df.power$Global_active_power <- as.numeric(as.character(df.power$Global_active_power))
df.power$Global_reactive_power <- as.numeric(as.character(df.power$Global_reactive_power))
df.power$Voltage <- as.numeric(as.character(df.power$Voltage))
df.power <- transform(df.power, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
df.power$Sub_metering_1 <- as.numeric(as.character(df.power$Sub_metering_1))
df.power$Sub_metering_2 <- as.numeric(as.character(df.power$Sub_metering_2))
df.power$Sub_metering_3 <- as.numeric(as.character(df.power$Sub_metering_3))