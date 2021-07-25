library(tidyverse)

# READ IN DATA
dane_2017 <- read.csv("~/Downloads/2661344.csv")
View(dane_2017)

dane_2018 <- read.csv("~/Downloads/2661345.csv")
View(dane_2018)

dane_2019 <- read.csv("~/Downloads/2661346.csv")
View(dane_2019)

dane_2020 <- read.csv("~/Downloads/2661347.csv")
View(dane_2020)

dane_2017_subset <- dane_2017[8240:16939,]
  
dane_2018_subset <- dane_2018[8481:17086,]
  
dane_2019_subset <- dane_2019[8432:17046,]

dane_2020_subset <- dane_2020[8501:17151,]


# MEAN HUMIDITY: DANE COUNTY, WI, USA
dane_humidity_2017 <- mean(dane_2017$HourlyRelativeHumidity, na.rm = TRUE)
summary(dane_humidity_2017)

dane_humidity_2018 <- mean(dane_2018$HourlyRelativeHumidity, na.rm = TRUE)
summary(dane_humidity_2018)

dane_humidity_2019 <- mean(dane_2019$HourlyRelativeHumidity, na.rm = TRUE)
summary(dane_humidity_2019)

dane_humidity_2020 <- mean(dane_2020$HourlyRelativeHumidity, na.rm = TRUE)
summary(dane_humidity_2020)


# MEAN DRY BULB TEMPERATURE: DANE COUNTY, WI, USA
dane_temp_2017 <- mean(as.numeric(dane_2017$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dane_temp_2017)

dane_temp_2018 <- mean(as.numeric(dane_2018$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dane_temp_2018)

dane_temp_2019 <- mean(as.numeric(dane_2019$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dane_temp_2019)

dane_temp_2020 <- mean(as.numeric(dane_2020$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dane_temp_2020)

# MEAN HUMIDITY: DANE COUNTY, WI, USA MAY - AUGUST
dane_humidity_2017_1 <- mean(dane_2017_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(dane_humidity_2017_1)

dane_humidity_2018_1 <- mean(dane_2018_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(dane_humidity_2018_1)

dane_humidity_2019_1 <- mean(dane_2019_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(dane_humidity_2019_1)

dane_humidity_2020_1 <- mean(dane_2020_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(dane_humidity_2020_1)

# MEAN DRY BULB TEMPERATURE: DANE COUNTY, WI, USA MAY - AUGUST
dane_temp_2017_1 <- mean(as.numeric(dane_2017_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dane_temp_2017_1)

dane_temp_2018_1 <- mean(as.numeric(dane_2018_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dane_temp_2018_1)

dane_temp_2019_1 <- mean(as.numeric(dane_2019_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dane_temp_2019_1)

dane_temp_2020_1 <- mean(as.numeric(dane_2020_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dane_temp_2020_1)
