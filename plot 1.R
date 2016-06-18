setwd("D:/Data Science Course/04 - Exploratory Data/Week 1/lAssignment")
dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

globalActivePower <- as.numeric(subsetData$Global_active_power)
png("plot1.png",width = 480, height = 480)
hist(globalActivePower,col="red",main="Global Active Power", xlab = "Global Active Power (Kilowatts)")
dev.off()