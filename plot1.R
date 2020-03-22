source("download.R")

plot1 <- function(data) {
  hist(data$Global_active_power, 
       main="Global Active Power", 
       xlab="Global Active Power (kilowatts)",
       ylab="Frequency",
       col="Red",
       cex.sub=0.8
  )
}

writePngPlot("plot1.png", plot1)