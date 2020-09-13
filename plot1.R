
# Reading Data into R by calling ReadData.R
source("ReadData.R")

# Plotting histogram for column "Global_active_power"
png(filename = "plot1.png",
    width = 480,
    height = 480)

hist(
  hpc$Global_active_power,
  col = "red",
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)"
)
dev.off()
