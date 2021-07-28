library(tidyverse)
library(SDMTools)

wnv_2018 <- read_csv("~/Downloads/2018_state_wnv - Sheet1.csv")
view(wnv_2018)

# WNV CASES & HUMIDITY

humidity <- ggplot(data = wnv_2018) + geom_point(aes(x = avg_humidity, y = cases))
humidity <- humidity + geom_smooth(aes(x = avg_humidity, y = cases), method = "lm", se = F)
humidity <- humidity + labs(title = "Average Relative Humidity vs. West Nile Virus Cases", subtitle = "United States, 2018") + xlab("Average Relative Humidity") + ylab("West Nile Virus Cases")
humidity

# WNV CASES & TEMP

temp <- ggplot(data = wnv_2018) + geom_point(aes(x = avg_temp, y = cases))
temp <- temp + geom_smooth(aes(x = avg_temp, y = cases), method = "lm", se = F)
temp <- temp + labs(title = "Average Temperature vs. West Nile Virus Cases", subtitle = "United States, 2018") + xlab("Average Temperature (F)") + ylab("West Nile Virus Cases")
temp

# WNV CASES & PRECIPITATION

precp <- ggplot(data = wnv_2018) + geom_point(aes(x = avg_precp, y = cases))
precp <- precp + geom_smooth(aes(x = avg_precp, y = cases), method = "lm", se = F)
precp <- precp + labs(title = "Average Precipitation vs. West Nile Virus Cases", subtitle = "United States, 2018") + xlab("Average Precipitation (Inches)") + ylab("West Nile Virus Cases")
precp


# WNV CASES & HUMIDITY

lm_hum <- lm(cases ~ avg_humidity, data = wnv_2018)
summary(lm_hum)

# WNV CASES & TEMP

lm_temp <- lm(cases ~ avg_temp, data = wnv_2018)
summary(lm_temp)

# WNV CASES & PRECIPITATION

lm_precp <- lm(cases ~ avg_precp, data = wnv_2018)
summary(lm_precp)

