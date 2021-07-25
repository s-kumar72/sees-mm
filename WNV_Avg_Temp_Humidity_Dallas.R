library(tidyverse)

# READ IN DATA
dal_2017 <- read.csv("~/Downloads/2661356.csv")
View(dal_2017)

dal_2018 <- read.csv("~/Downloads/2661357.csv")
View(dal_2018)

dal_2019 <- read.csv("~/Downloads/2661358.csv")
View(dal_2019)

dal_2020 <- read.csv("~/Downloads/2661359.csv")
View(dal_2020)

dal_2017_subset <- dal_2017[4650:9256,]

dal_2018_subset <- dal_2018[4704:9022,]

dal_2019_subset <- dal_2019[4666:9193,]

dal_2020_subset <- dal_2020[4786:9243,]


# MEAN HUMIDITY: DALLAS COUNTY, TX, USA
dal_humidity_2017 <- mean(dal_2017$HourlyRelativeHumidity, na.rm = TRUE)
summary(dal_humidity_2017)

dal_humidity_2018 <- mean(dal_2018$HourlyRelativeHumidity, na.rm = TRUE)
summary(dal_humidity_2018)

dal_humidity_2019 <- mean(dal_2019$HourlyRelativeHumidity, na.rm = TRUE)
summary(dal_humidity_2019)

dal_humidity_2020 <- mean(dal_2020$HourlyRelativeHumidity, na.rm = TRUE)
summary(dal_humidity_2020)


# MEAN DRY BULB TEMPERATURE: DALLAS COUNTY, TX, USA
dal_temp_2017 <- mean(as.numeric(dal_2017$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dal_temp_2017)

dal_temp_2018 <- mean(as.numeric(dal_2018$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dal_temp_2018)

dal_temp_2019 <- mean(as.numeric(dal_2019$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dal_temp_2019)

dal_temp_2020 <- mean(as.numeric(dane_2020$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dal_temp_2020)

# MEAN HUMIDITY: DALLAS COUNTY, TX, USA MAY - AUGUST
dal_humidity_2017_1 <- mean(dal_2017_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(dal_humidity_2017_1)

dal_humidity_2018_1 <- mean(dal_2018_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(dal_humidity_2018_1)

dal_humidity_2019_1 <- mean(dal_2019_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(dal_humidity_2019_1)

dal_humidity_2020_1 <- mean(dal_2020_subset$HourlyRelativeHumidity, na.rm = TRUE)
summary(dal_humidity_2020_1)

# MEAN DRY BULB TEMPERATURE: DALLAS COUNTY, TX, USA MAY - AUGUST
dal_temp_2017_1 <- mean(as.numeric(dal_2017_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dal_temp_2017_1)

dal_temp_2018_1 <- mean(as.numeric(dal_2018_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dal_temp_2018_1)

dal_temp_2019_1 <- mean(as.numeric(dal_2019_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dal_temp_2019_1)

dal_temp_2020_1 <- mean(as.numeric(dal_2020_subset$HourlyDryBulbTemperature), na.rm = TRUE)
summary(dal_temp_2020_1)
