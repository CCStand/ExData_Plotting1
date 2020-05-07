plot1 <- function(epc){
  #Open png device
  png(file = "plot1.png")
  
  #Create histogram
  hist(epc$Global_active_power, breaks=12, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
  
  #Close png device
  dev.off()
}