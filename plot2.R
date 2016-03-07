#####################################################################
# plot2.R
#####################################################################
plot(df.power$timestamp,df.power$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
cat("plot2.R constructed the plot2.png plot")