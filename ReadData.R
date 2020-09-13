# Reading data set into R
hpc <- read.table("./household_power_consumption.txt",
                  sep = ";",
                  na.strings = "?",
                  header = T)
# Filtering for Dates = 1/2/2007 & 2/2/2007
hpc <- filter(hpc, Date == "1/2/2007" | Date == "2/2/2007")

# Creating a new column mergin Date & time and changing format of column to POSIXlt

hpc$fullDate<- strptime(paste(hpc$Date, hpc$Time), format = "%d/%m/%Y %H:%M:%S")