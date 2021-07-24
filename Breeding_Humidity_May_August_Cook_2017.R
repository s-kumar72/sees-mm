library(tidyverse)

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

# COOK 2017 

cook_2017_jan <- cook_2017[1:1283,]
cook_2017_feb <- cook_2017[1284:2284,]
cook_2017_march <- cook_2017[2285:3562,]
cook_2017_april <- cook_2017[3563:4639,]
cook_2017_may <- cook_2017[4640:5722,]
cook_2017_june <- cook_2017[5723:6688,]
cook_2017_july <- cook_2017[6689:7767,]
cook_2017_august <- cook_2017[7768:8774,]
cook_2017_sept <- cook_2017[8775:9687,]
cook_2017_oct <- cook_2017[9688:10839,]
cook_2017_nov <- cook_2017[10840:11926,]
cook_2017_dec <- cook_2017[11927:13013,]

# LA 2017 HUMIDITY (BREEDING)

breeding_cook_2017 <- ggplot() + geom_boxplot(data = cook_2017_may, aes(x = "May", y = HourlyRelativeHumidity, fill = "May")) 
breeding_cook_2017 <- breeding_cook_2017 + geom_boxplot(data = cook_2017_june, aes(x = "June", y = HourlyRelativeHumidity, fill = "June"))
breeding_cook_2017 <- breeding_cook_2017+ geom_boxplot(data = cook_2017_july, aes(x = "July", y = HourlyRelativeHumidity, fill = "July"))
breeding_cook_2017 <- breeding_cook_2017+ geom_boxplot(data = cook_2017_august, aes(x = "August", y = HourlyRelativeHumidity, fill = "August"))
breeding_cook_2017 <- breeding_cook_2017 + xlab("Month") + ylab("Relative Humidity") + labs(title = "Relative Humidity During Culex Breeding Season", subtitle = "Cook County, 2017")

breeding_cook_2017

# LA 2017 HUMIDITY (ALL)

all_cook_2017 <- ggplot() + geom_boxplot(data = cook_2017_jan, aes(x = "01", y = HourlyRelativeHumidity, fill = "01")) 
all_cook_2017 <- all_cook_2017 + geom_boxplot(data = cook_2017_feb, aes(x = "02", y = HourlyRelativeHumidity, fill = "02"))
all_cook_2017 <- all_cook_2017 + geom_boxplot(data = cook_2017_march, aes(x = "03.", y = HourlyRelativeHumidity, fill = "03"))
all_cook_2017 <- all_cook_2017 + geom_boxplot(data = cook_2017_april, aes(x = "04", y = HourlyRelativeHumidity, fill = "04"))
all_cook_2017 <- all_cook_2017 + geom_boxplot(data = cook_2017_may, aes(x = "05", y = HourlyRelativeHumidity, fill = "05"))
all_cook_2017 <- all_cook_2017 + geom_boxplot(data = cook_2017_june, aes(x = "06", y = HourlyRelativeHumidity, fill = "06"))
all_cook_2017 <- all_cook_2017 + geom_boxplot(data = cook_2017_july, aes(x = "07", y = HourlyRelativeHumidity, fill = "07"))
all_cook_2017 <- all_cook_2017 + geom_boxplot(data = cook_2017_august, aes(x = "08", y = HourlyRelativeHumidity, fill = "08"))
all_cook_2017 <- all_cook_2017 + geom_boxplot(data = cook_2017_sept, aes(x = "09.", y = HourlyRelativeHumidity, fill = "09"))
all_cook_2017 <- all_cook_2017 + geom_boxplot(data = cook_2017_oct, aes(x = "10", y = HourlyRelativeHumidity, fill = "10"))
all_cook_2017 <- all_cook_2017 + geom_boxplot(data = cook_2017_nov, aes(x = "11", y = HourlyRelativeHumidity, fill = "11"))
all_cook_2017 <- all_cook_2017 + geom_boxplot(data = cook_2017_sept, aes(x = "12", y = HourlyRelativeHumidity, fill = "12"))
all_cook_2017 <- all_cook_2017 + xlab("Month") + ylab("Relative Humidity") + labs(title = "Monthly Relative Humidity, Cook County 2017")

all_cook_2017

