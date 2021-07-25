library(tidyverse)

cook_2017 <- read.csv("~/Downloads/2659202.csv")
View(cook_2017)

cook_2018 <- read.csv("~/Downloads/2659204.csv")
View(cook_2018)

cook_2019 <- read.csv("~/Downloads/2659205.csv")
View(cook_2019)

cook_2020 <- read.csv("~/Downloads/2659211.csv")
View(cook_2020)

cook_2017_subset <- cook_2017[4640:8774,]

cook_2018_subset <- cook_2018[4437:8871,]

cook_2019_subset <- cook_2019[4625:8882,]

cook_2020_subset <- cook_2020[4503:8601,]

# MEAN HUMIDITY: COOK COUNTY, IL, USA MAY - AUGUST
cook_humidity_2017_1 <- mean(cook_2017_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(cook_humidity_2017_1)

cook_humidity_2018_1 <- mean(cook_2018_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(cook_humidity_2018_1)

cook_humidity_2019_1 <- mean(cook_2019_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(cook_humidity_2019_1)

cook_humidity_2020_1 <- mean(cook_2020_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(cook_humidity_2020_1)

# MEAN DRY BULB TEMPERATURE: COOK COUNTY, IL, USA MAY - AUGUST
cook_temp_2017_1 <- mean(as.numeric(cook_2017_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(cook_temp_2017_1)

cook_temp_2018_1 <- mean(as.numeric(cook_2018_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(cook_temp_2018_1)

cook_temp_2019_1 <- mean(as.numeric(cook_2019_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(cook_temp_2019_1)

cook_temp_2020_1 <- mean(as.numeric(cook_2020_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(cook_temp_2020_1)

