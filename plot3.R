plot3 <- function(epc){
  #Open png device
  png(file = "plot3.png")
  
  #Setup plot axes and labels
  with(epc, plot(DateTime, Sub_metering_1, type ="n", xlab="", ylab="Energy sub metering"))
  
  #Add line for Sub_metering_1 values
  with(epc, lines(DateTime, Sub_metering_1, type ="l"))
  
  #Add line for Sub_metering_2 values
  with(epc, lines(DateTime, Sub_metering_2, type ="l", col = "red"))
  
  #Add line for Sub_metering_3 values
  with(epc, lines(DateTime, Sub_metering_3, type ="l", col = "blue"))
  
  #Add legend
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
  
  #Close png device
  dev.off()
}