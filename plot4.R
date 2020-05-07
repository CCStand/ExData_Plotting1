plot4 <- function(epc){
  #Open png device
  png(file = "plot4.png")
  
  #Setup layout for all plots
  par(mfrow = c(2,2))
  
  #Draw 1st plot
  with(epc, plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power"))
  
  #Draw 2nd plot
  with(epc, plot(DateTime, Voltage, type="l", xlab="datetime"))
  
  #Draw 3rd plot (Note - The legend has been resized and had its border removed compared to the Plot 3 version)
  with(epc, plot(DateTime, Sub_metering_1, type ="n", xlab="", ylab="Energy sub metering"))
  with(epc, lines(DateTime, Sub_metering_1, type ="l"))
  with(epc, lines(DateTime, Sub_metering_2, type ="l", col = "red"))
  with(epc, lines(DateTime, Sub_metering_3, type ="l", col = "blue"))
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, cex=0.7, bty="n")
  
  #Draw 4th plot
  with(epc, plot(DateTime, Global_reactive_power, type="l", xlab="datetime"))
  
  #Close png device
  dev.off()
}