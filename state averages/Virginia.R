# VIRGINIA

library(tidyverse)

full_2018 <- read_csv("~/Downloads/2663560.csv")
View(full_2018)

subset_2018 <- full_2018[5967:9596,] 

# TEMPERATURE

temp <- mean(as.numeric(subset_2018$HourlyDryBulbTemperature), na.rm = TRUE)
summary(temp)

# HUMIDITY

humidity <- mean(subset_2018$HourlyRelativeHumidity, na.rm = TRUE)
summary(humidity)

# PRECIPITATION

prec <- mean(as.numeric(subset_2018$HourlyPrecipitation), na.rm = TRUE)
summary(prec)
