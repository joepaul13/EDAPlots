datafile <- "C:/Users/tjoep/Desktop/Projects/R/CourseraProj1/ExData_Plotting1/household_power_consumption.txt"
data <- read.table(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subsetData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

globalActivePower <- as.numeric(subsetData$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()