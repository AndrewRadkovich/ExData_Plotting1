source("download.R")

plot2 <- function(data) {
  plot(data$Global_active_power~data$DateTime, 
       type="l", 
       ylab="Global Active Power (kilowatts)", 
       xlab="")
}

writePngPlot("plot2.png", plot2)
