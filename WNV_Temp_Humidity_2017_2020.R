library(tidyverse)

# READ IN DATA
la_2017 <- read.csv("~/Downloads/2659171.csv")
View(la_2017)

la_2018 <- read.csv("~/Downloads/2659177.csv")
View(la_2018)

la_2019 <- read.csv("~/Downloads/2659182.csv")
View(la_2019)

la_2020 <- read.csv("~/Downloads/2659183.csv")
View(la_2020)

cook_2017 <- read.csv("~/Downloads/2659202.csv")
View(cook_2017)

cook_2018 <- read.csv("~/Downloads/2659204.csv")
View(cook_2018)

cook_2019 <- read.csv("~/Downloads/2659205.csv")
View(cook_2019)

cook_2020 <- read.csv("~/Downloads/2659211.csv")
View(cook_2020)

richland_2017 <- read.csv("~/Downloads/2659218.csv")
View(richland_2017)

richland_2018 <- read.csv("~/Downloads/2659224.csv")
View(richland_2018)

richland_2019 <- read.csv("~/Downloads/2659230.csv")
View(richland_2019)

richland_2020 <- read.csv("~/Downloads/2659231.csv")
View(richland_2020)


# MEAN HUMIDITY: LOS ANGELES COUNTY, CA, USA
la_humidity_2017 <- mean(la_2017$HourlyRelativeHumidity, na.rm = TRUE)
summary(la_humidity_2017)

la_humidity_2018 <- mean(la_2018$HourlyRelativeHumidity, na.rm = TRUE)
summary(la_humidity_2018)

la_humidity_2019 <- mean(la_2019$HourlyRelativeHumidity, na.rm = TRUE)
summary(la_humidity_2019)

la_humidity_2020 <- mean(la_2020$HourlyRelativeHumidity, na.rm = TRUE)
summary(la_humidity_2020)

# MEAN HUMIDITY: COOK COUNTY, IL, USA
cook_humidity_2017 <- mean(cook_2017$HourlyRelativeHumidity, na.rm = TRUE)
summary(cook_humidity_2017)

cook_humidity_2018 <- mean(cook_2018$HourlyRelativeHumidity, na.rm = TRUE)
summary(cook_humidity_2018)

cook_humidity_2019 <- mean(cook_2019$HourlyRelativeHumidity, na.rm = TRUE)
summary(cook_humidity_2019)

cook_humidity_2020 <- mean(cook_2020$HourlyRelativeHumidity, na.rm = TRUE)
summary(cook_humidity_2020)

# MEAN HUMIDITY: RICHLAND COUNTY, SC, USA
richland_humidity_2017 <- mean(richland_2017$HourlyRelativeHumidity, na.rm = TRUE)
summary(richland_humidity_2017)

richland_humidity_2018 <- mean(richland_2018$HourlyRelativeHumidity, na.rm = TRUE)
summary(richland_humidity_2018)

richland_humidity_2019 <- mean(richland_2019$HourlyRelativeHumidity, na.rm = TRUE)
summary(richland_humidity_2019)

richland_humidity_2020 <- mean(richland_2020$HourlyRelativeHumidity, na.rm = TRUE)
summary(richland_humidity_2020)

# MEAN DRY BULB TEMPERATURE: LOS ANGELES COUNTY, CA, USA
la_temp_2017 <- mean(as.numeric(la_2017$HourlyDryBulbTemperature), na.rm = TRUE)
summary(la_temp_2017)

la_temp_2018 <- mean(la_2018$HourlyDryBulbTemperature, na.rm = TRUE)
summary(la_temp_2018)

la_temp_2019 <- mean(as.numeric(la_2019$HourlyDryBulbTemperature), na.rm = TRUE)
summary(la_temp_2019)

la_temp_2020 <- mean(as.numeric(la_2020$HourlyDryBulbTemperature), na.rm = TRUE)
summary(la_temp_2020)

# MEAN DRY BULB TEMPERATURE: COOK COUNTY, IL, USA
cook_temp_2017 <- mean(cook_2017$HourlyDryBulbTemperature, na.rm = TRUE)
summary(cook_temp_2017)

cook_temp_2018 <- mean(cook_2018$HourlyDryBulbTemperature, na.rm = TRUE)
summary(cook_temp_2018)

cook_temp_2019 <- mean(as.numeric(cook_2019$HourlyDryBulbTemperature), na.rm = TRUE)
summary(cook_temp_2019)

cook_temp_2020 <- mean(cook_2020$HourlyDryBulbTemperature, na.rm = TRUE)
summary(cook_temp_2020)

# MEAN DRY BULB TEMPERATURE: RICHLAND COUNTY, SC, USA
richland_temp_2017 <- mean(as.numeric(richland_2017$HourlyDryBulbTemperature), na.rm = TRUE)
summary(richland_temp_2017)

richland_temp_2018 <- mean(as.numeric(richland_2018$HourlyDryBulbTemperature), na.rm = TRUE)
summary(richland_temp_2018)

richland_temp_2019 <- mean(as.numeric(richland_2019$HourlyDryBulbTemperature), na.rm = TRUE)
summary(richland_temp_2019)

richland_temp_2020 <- mean(as.numeric(richland_2020$HourlyDryBulbTemperature), na.rm = TRUE)
summary(richland_temp_2020)
