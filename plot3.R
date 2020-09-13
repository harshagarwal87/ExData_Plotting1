
# Reading Data into R by calling ReadData.R
source("ReadData.R")

# Plotting the three sub metering columns w.r.t to fullDate
png(filename = "plot3.png",
    width = 480,
    height = 480)

# Plotting Sub metering 1
with(hpc,
     plot(
       fullDate,
       Sub_metering_1,
       type = "l",
       xlab = "",
       ylab = "Energy sub metering"
     ))

# Plotting Sub metering 2
with(hpc,
     lines(fullDate,
           Sub_metering_2,
           type = "l",
           col = "Red"))

# Plotting Sub metering 3
with(hpc,
     lines(fullDate,
           Sub_metering_3,
           type = "l",
           col = "Blue"))

# Adding Legend
legend(
  x = "topright",
  pch = "_",
  col = c("Black", "Red", "Blue"),
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)

dev.off()