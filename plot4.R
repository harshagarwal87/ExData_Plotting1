source("ReadData.R")

# Plotting 4 plots in one png file
png(filename = "plot4.png",
    width = 480,
    height = 480)

# Diving area into two rows and two columns
par(mfcol = c(2, 2))

## Plot 1
# Plotting "Global_active_power" w.r.t fullDate
with(
  hpc,
  plot(
    fullDate,
    Global_active_power,
    type = "l",
    xlab = "",
    ylab = "Global Active Power",
  )
)

## Plot 2
# Plotting Sub metering 1 w.r.t fullDate
with(hpc,
     plot(
       fullDate,
       Sub_metering_1,
       type = "l",
       xlab = "",
       ylab = "Energy sub metering"
     ))

# Plotting Sub metering 2 w.r.t fullDate
with(hpc,
     lines(fullDate,
           Sub_metering_2,
           type = "l",
           col = "Red"))

# Plotting Sub metering 3 w.r.t fullDate
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
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  bty = "n"
)

## Plot 3
# Plotting Voltage 3 w.r.t fullDate
with(hpc,
     plot(
       fullDate,
       Voltage,
       type = "l",
       xlab = "datetime",
       ylab = "Voltage"
     ))

## Plot 3
# Plotting Global_reactive_power 3 w.r.t fullDate
with(hpc,
     plot(
       fullDate,
       Global_reactive_power,
       type = "l",
       xlab = "datetime",
       ylab = "Global_reactive_power"
     ))

dev.off()