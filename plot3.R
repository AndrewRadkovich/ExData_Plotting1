source("download.R")

plot3 <- function(data) {
  with(data, {
    plot(Sub_metering_1~DateTime, 
         type="l",
         ylab="Global Active Power (kilowatts)", 
         xlab="", 
         cex=0.8
    )
    lines(Sub_metering_2~DateTime, col='Red')
    lines(Sub_metering_3~DateTime, col='Blue')
  })
  legend("topright", 
         col=c("black", "red", "blue"), 
         lty=1, 
         lwd=1, 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         cex=0.8
  )
}

writePngPlot("plot3.png", plot3)
