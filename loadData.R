loadData <- function(){
  library(dplyr)
  library(lubridate)
  
  #Create data directory if it doesn't exist
  if(!dir.exists("./data")){
    dir.create("./data")
  }
  
  #Download data from source to data directory
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "./data/Electric Power Consumption.zip")
  
  #Unzip data file
  unzip("./data/Electric Power Consumption.zip", exdir = "./data")
  
  #Read data into R
  data <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";", colClasses = "character")
  
  #Create DateTime column to replace the 'Date' and 'Time' columns
  data <- mutate(data, DateTime = as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"))
  data <- select(data, -c(Date, Time))
  
  #Limit data to that collected on 2007-02-01 and 2007-02-02
  data <- subset(data, DateTime < as.Date("2007-02-03") & DateTime > as.Date("2007-02-01"))
  
  #Ensure all columns (except Time) are numeric
  mutate_at(data, vars(-c(DateTime)), as.numeric)
}