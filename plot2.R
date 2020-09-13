
# Reading Data into R by calling ReadData.R
source("ReadData.R")

# Plotting "Global_active_power" w.r.t fullDate
png(filename = "plot2.png",
    width = 480,
    height = 480)

with(
  hpc,
  plot(
    fullDate,
    Global_active_power,
    type = "l",
    xlab = "",
    ylab = "Global Active Power (kilowatts)",
  )
)

dev.off()