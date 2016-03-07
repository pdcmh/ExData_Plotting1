#####################################################################
# plot4.R
#####################################################################

#####################################################################
# Set Graphical Parameters 2 rows 2 columns
#####################################################################

par(mfrow=c(2,2))

#####################################################################
# Plot 1
#####################################################################

plot(df.power$timestamp,df.power$Global_active_power, type="l", xlab="", ylab="Global Active Power")

#####################################################################
# Plot 2
#####################################################################

plot(df.power$timestamp,df.power$Voltage, type="l", xlab="datetime", ylab="Voltage")

#####################################################################
# Plot 3
#####################################################################

plot(df.power$timestamp,df.power$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(df.power$timestamp,df.power$Sub_metering_2,col="red")
lines(df.power$timestamp,df.power$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) #bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly

#####################################################################
# Plot 4
#####################################################################

plot(df.power$timestamp,df.power$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

#####################################################################
# Construct PNG file
#####################################################################

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
cat("plot4.R constructed the plot4.png plot")