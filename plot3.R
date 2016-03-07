#####################################################################
# plot3.R
#####################################################################
plot(df.power$timestamp,df.power$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(df.power$timestamp,df.power$Sub_metering_2,col="red")
lines(df.power$timestamp,df.power$Sub_metering_3,col="blue")
legend(x = "topright", y = 0.92, col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1), lwd=c(1,1))
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
cat("plot3.R constructed the plot3.png plot")