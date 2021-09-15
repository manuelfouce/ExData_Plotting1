household_power_consumption <- read.table("household_power_consumption.txt", sep=";",head=TRUE)

household_power_consumption$datetime <- as.POSIXct(as.character(paste(household_power_consumption$Date,household_power_consumption$Time)), 
                                                   format="%d/%m/%Y %H:%M:%S")

household_power_consumption$Date <- as.Date(household_power_consumption$Date, format= "%d/%m/%Y")

household_power_consumption <- subset(household_power_consumption, 
                                      Date == c("2007-02-01" , "2007-02-02"))



with(household_power_consumption, 
     hist(as.numeric(Global_active_power),
          main="Global Active Power", 
          xlab= "Global Active Power (kilowatts)",
          col= "red"))


dev.copy(png, file="plot1.png")

dev.off()






