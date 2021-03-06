source("download.R")

plot4 <- function(data) {
  par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
  with(data, {
    plot(Global_active_power~DateTime,
         type="l", 
         ylab="Global Active Power (kilowatts)", 
         xlab="")
    plot(Voltage~DateTime, 
         type="l", 
         ylab="Voltage (volt)", 
         xlab="")
    plot(Sub_metering_1~DateTime, 
         type="l", 
         ylab="Global Active Power (kilowatts)", 
         xlab="")
    lines(Sub_metering_2~DateTime,col='Red')
    lines(Sub_metering_3~DateTime,col='Blue')
    legend("topright", 
           col=c("black", "red", "blue"), 
           lty=1, 
           lwd=2, 
           bty="n",
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.5)
    plot(Global_reactive_power~DateTime, 
         type="l", 
         ylab="Global Rective Power (kilowatts)",
         xlab="")
  })
}

writePngPlot("plot4.png", plot4)
