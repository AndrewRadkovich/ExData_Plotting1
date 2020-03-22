download <- function() {
  datafile <- "household_power_consumption.txt"
  if (!file.exists(datafile)) {
    zipfile <- "household_power_consumption.zip"
    url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(url = url, destfile = zipfile)
    unzip(zipfile = zipfile)
  }
  data <- read.table(file = datafile, header=TRUE, na.strings="?", sep=";")
  data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ), ]
  data$Date <- as.Date(data$Date, format="%d/%m/%Y")
  dateTime <- paste(data$Date, data$Time)
  data$DateTime <- as.POSIXct(dateTime)
  return(data)
}

writePngPlot <- function(file, copyPlot) {
  data <- download()
  copyPlot(data)
  dev.copy(png, file=file, height=480, width=480)
  dev.off()
}
