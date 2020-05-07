plot2 <- function(epc){
  #Open png device
  png(file = "plot2.png")
  
  #Create plot
  with(epc, plot(DateTime,Global_active_power, ylab = "Global Active Power(killowatts)", xlab = "",type = "l"))
  
  #Close png device
  dev.off()
  }