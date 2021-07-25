library(tidyverse)

richland_2017 <- read.csv("~/Downloads/2659218.csv")
View(richland_2017)

richland_2018 <- read.csv("~/Downloads/2659224.csv")
View(richland_2018)

richland_2019 <- read.csv("~/Downloads/2659230.csv")
View(richland_2019)

richland_2020 <- read.csv("~/Downloads/2659231.csv")
View(richland_2020)

richland_2017_subset <- richland_2017[4198:8724,]

richland_2018_subset <- richland_2018[4267:8739,]

richland_2019_subset <- richland_2019[4434:8856,]

richland_2020_subset <- richland_2020[4404:8985,]

# MEAN HUMIDITY: RICHLAND COUNTY, SC, USA MAY - AUGUST
richland_humidity_2017_1 <- mean(richland_2017_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(richland_humidity_2017_1)

richland_humidity_2018_1 <- mean(richland_2018_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(richland_humidity_2018_1)

richland_humidity_2019_1 <- mean(richland_2019_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(richland_humidity_2019_1)

richland_humidity_2020_1 <- mean(richland_2020_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(richland_humidity_2020_1)

# MEAN DRY BULB TEMPERATURE: RICHLAND COUNTY, SC, USA MAY - AUGUST
richland_temp_2017_1 <- mean(as.numeric(richland_2017_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(richland_temp_2017_1)

richland_temp_2018_1 <- mean(as.numeric(richland_2018_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(richland_temp_2018_1)

richland_temp_2019_1 <- mean(as.numeric(richland_2019_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(richland_temp_2019_1)

richland_temp_2020_1 <- mean(as.numeric(richland_2020_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(richland_temp_2020_1)

