#####################################################################
# plot1.R
#####################################################################
hist(df.power$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
cat("plot1.R constructed the plot1.png plot")