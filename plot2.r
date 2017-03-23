## LSH Coursera data class 3/22/2017
## code to create plot 2

## read in data file and then use only the required dates
dt <- read.table("./pga/household_power_consumption.txt", header=TRUE, sep=";") 
dt<-filter(dt, dt$Date =="1/2/2007" | dt$Date =="2/2/2007")

## create plot 2 of assingment   
png(filename = "./out/plot2.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")
plot(dt$Global_active_power,type = "l", xlab="",ylab="Global Active Power (killowatts)", xaxt = "n")
axis(side=1,at=c(0,1500,2900),labels=c("Thurs","Fri","Sat"))
dev.off()

