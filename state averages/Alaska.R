# ALASKA

library(tidyverse)

full_2018 <- read_csv("~/Downloads/2661839.csv")
View(full_2018)

subset_2018 <- full_2018[5913:9110,] 

# TEMPERATURE

temp <- mean(subset_2018$HourlyDryBulbTemperature, na.rm = TRUE)
summary(temp)

# HUMIDITY

humidity <- mean(subset_2018$HourlyRelativeHumidity, na.rm = TRUE)
summary(humidity)

# PRECIPITATION

prec <- mean(as.numeric(subset_2018$HourlyPrecipitation), na.rm = TRUE)
summary(prec)
