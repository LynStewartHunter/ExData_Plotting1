## LSH Coursera data class 3/22/2017
## code to create plot 1

## read in data file and then use only the required dates
dt <- read.table("./pga/household_power_consumption.txt", header=TRUE, sep=";") 
dt<-filter(dt, dt$Date =="1/2/2007" | dt$Date =="2/2/2007")

## create plot 1 of assingment   
png(filename = "./out/plot1.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")
hist(dt$Global_active_power,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",ylab = "Frequency",col="red")
dev.off()