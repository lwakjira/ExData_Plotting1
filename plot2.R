
dir <- "C:/Users/lwakjira/Documents/GitHub/ExData_Plotting1"
setwd(dir)
#read in household power file and filter for data in date range
hshld <- "./household_power_consumption.txt"
hshld_data <- read.table(hshld, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
hshld_sub <- hshld_data[hshld_data$Date %in% c("1/2/2007","2/2/2007") ,]

#plot2
datetime <- strptime(paste(hshld_sub$Date, hshld_sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(hshld_sub$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime,globalActivePower, type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

