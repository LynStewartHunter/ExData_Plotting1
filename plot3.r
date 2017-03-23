## LSH Coursera data class 3/22/2017
## code to create plot 3

## read in data file and then use only the required dates
dt <- read.table("./pga/household_power_consumption.txt", header=TRUE, sep=";") 
dt<-filter(dt, dt$Date =="1/2/2007" | dt$Date =="2/2/2007")

## create plot 3 of assingment   
png(filename = "./out/plot3.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")
plot(dt$Sub_metering_1,type = "l", pch="", xlab="",ylab="Energy Submetering", xaxt = "n")
## axis(side=1,at=c(0,1500,2900),labels=c("Thurs","Fri","Sat"))
lines(dt$Sub_metering_2, type = "l", col = "red")
lines(dt$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red", "blue"),lty = 1:3,cex=0.6)
dev.off()
