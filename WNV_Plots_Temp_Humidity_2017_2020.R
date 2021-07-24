library(tidyverse)
library(SDMTools)

wnv <- read.csv("~/Downloads/WNV Data - Sheet1.csv")
View(wnv)

cook <- subset(wnv, county == "Cook")
la <- subset(wnv, county == "LA")
richland <- subset(wnv, county == "Richland")

# PLOT: WNV CASES OVER TIME

cook_cases <- ggplot(data = cook, aes(x = year, y = wnv_cases)) + geom_line(color = "blue") + geom_point()
cook_cases <- cook_cases + xlab("Year") + ylab("West Nile Virus Cases")
cook_cases <- cook_cases + labs(title = "Cook County West Nile Virus Cases", subtitle = "2017 to 2020")
cook_cases

la_cases <- ggplot(data = la, aes(x = year, y = wnv_cases)) + geom_line(color = "blue") + geom_point()
la_cases <- la_cases + xlab("Year") + ylab("West Nile Virus Cases")
la_cases <- la_cases + labs(title = "Los Angeles County West Nile Virus Cases", subtitle = "2017 to 2020")
la_cases

richland_cases <- ggplot(data = richland, aes(x = year, y = wnv_cases)) + geom_line(color = "blue") + geom_point()
richland_cases <- richland_cases + xlab("Year") + ylab("West Nile Virus Cases")
richland_cases <- richland_cases + labs(title = "Richland County West Nile Virus Cases", subtitle = "2017 to 2020")
richland_cases

?label_value
all_cases <- ggplot(data = la, aes(x = year, y = wnv_cases, color = "pink")) + geom_line()
all_cases <- all_cases + geom_line(data = cook, aes(x = year, y = wnv_cases, color  = "blue"))
all_cases <- all_cases + geom_line(data = richland, aes(x = year, y = wnv_cases, color = "green")) 
all_cases <- all_cases + xlab("Year") + ylab("West Nile Virus Cases") + labs(title = "West Nile Virus Cases", subtitle = "2017 to 2020")
all_cases <- all_cases + guides(color=guide_legend(title="County"))

all_cases

# ALL 3 VARIABLES --> LA COUNTY

los_angeles <- ggplot(data = la) + geom_line(aes(x = year, y = wnv_cases, color = "West Nile Virus Cases")) 
los_angeles <- los_angeles + geom_line(aes(x = year, y = rel_humidity, color = "Relative Humidity"))
los_angeles <- los_angeles + geom_line(aes(x = year, y = temp_dry_bulb, color = "Dry Bulb Temperature"))
los_angeles <- los_angeles + xlab("Year") + ylab("Value") + labs(title = "Humidity, Dry Bulb Temperature, and West Nile Virus Cases", subtitle = "Los Angeles County, 2017 to 2020")
los_angeles <- los_angeles + guides(color=guide_legend(title="Variable"))

los_angeles

# ALL 3 VARIABLES -- COOK COUNTY 

cook_county <- ggplot(data = cook) + geom_line(aes(x = year, y = wnv_cases, color = "West Nile Virus Cases")) 
cook_county <- cook_county + geom_line(aes(x = year, y = rel_humidity, color = "Relative Humidity"))
cook_county <- cook_county + geom_line(aes(x = year, y = temp_dry_bulb, color = "Dry Bulb Temperature"))
cook_county <- cook_county + xlab("Year") + ylab("Value") + labs(title = "Humidity, Dry Bulb Temperature, and West Nile Virus Cases", subtitle = "Cook County, 2017 to 2020")
cook_county <- cook_county + guides(color=guide_legend(title="Variable"))

cook_county

# ALL 3 VARIABLES -- RICHLAND COUNTY

richland_county <- ggplot(data = richland) + geom_line(aes(x = year, y = wnv_cases, color = "West Nile Virus Cases")) 
richland_county <- richland_county + geom_line(aes(x = year, y = rel_humidity, color = "Relative Humidity"))
richland_county <- richland_county + geom_line(aes(x = year, y = temp_dry_bulb, color = "Dry Bulb Temperature"))
richland_county <- richland_county + xlab("Year") + ylab("Value") + labs(title = "Humidity, Dry Bulb Temperature, and West Nile Virus Cases", subtitle = "Richland County, 2017 to 2020")
richland_county <- richland_county + guides(color=guide_legend(title="Variable"))

richland_county

