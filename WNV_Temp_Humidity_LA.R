library(tidyverse)

la_2017 <- read.csv("~/Downloads/2659171.csv")
View(la_2017)

la_2018 <- read.csv("~/Downloads/2659177.csv")
View(la_2018)

la_2019 <- read.csv("~/Downloads/2659182.csv")
View(la_2019)

la_2020 <- read.csv("~/Downloads/2659183.csv")
View(la_2020)

la_2017_subset <- la_2017[4245:8432,]

la_2018_subset <- la_2018[4001:8049,]

la_2019_subset <- la_2019[4055:8246,]

la_2020_subset <- la_2020[4015:8157,]

# MEAN HUMIDITY: LOS ANGELES COUNTY, CA, USA MAY - AUGUST
la_humidity_2017_1 <- mean(la_2017_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(la_humidity_2017_1)

la_humidity_2018_1 <- mean(la_2018_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(la_humidity_2018_1)

la_humidity_2019_1 <- mean(la_2019_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(la_humidity_2019_1)

la_humidity_2020_1 <- mean(la_2020_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(la_humidity_2020_1)

# MEAN DRY BULB TEMPERATURE: LOS ANGELES COUNTY, CA, USA MAY - AUGUST
la_temp_2017_1 <- mean(as.numeric(la_2017_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(la_temp_2017_1)

la_temp_2018_1 <- mean(as.numeric(la_2018_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(la_temp_2018_1)

la_temp_2019_1 <- mean(as.numeric(la_2019_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(la_temp_2019_1)

la_temp_2020_1 <- mean(as.numeric(la_2020_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(la_temp_2020_1)

