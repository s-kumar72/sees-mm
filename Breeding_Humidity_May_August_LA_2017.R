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

# LA 2017 

la_2017_jan <- la_2017[1:1089,]
la_2017_feb <- la_2017[1090:2193,]
la_2017_march <- la_2017[2194:3283,]
la_2017_april <- la_2017[3284:4243,]
la_2017_may <- la_2017[4245:5319,]
la_2017_june <- la_2017[5320:6397,]
la_2017_july <- la_2017 [6398:7407,]
la_2017_august <- la_2017[7408:8432,]
la_2017_sept <- la_2017[8433:9409,]
la_2017_oct <- la_2017[9410:10399,]
la_2017_nov <- la_2017[10400:11334,]
la_2017_dec <- la_2017[11335:12325,]

# LA 2017 HUMIDITY (BREEDING)

breeding_la_2017 <- ggplot() + geom_boxplot(data = la_2017_may, aes(x = "May", y = HourlyRelativeHumidity, fill = "May")) 
breeding_la_2017 <- breeding_la_2017 + geom_boxplot(data = la_2017_june, aes(x = "June", y = HourlyRelativeHumidity, fill = "June"))
breeding_la_2017 <- breeding_la_2017 + geom_boxplot(data = la_2017_july, aes(x = "July", y = HourlyRelativeHumidity, fill = "July"))
breeding_la_2017 <- breeding_la_2017 + geom_boxplot(data = la_2017_august, aes(x = "August", y = HourlyRelativeHumidity, fill = "August"))
breeding_la_2017 <- breeding_la_2017 + xlab("Month") + ylab("Relative Humidity") + labs(title = "Relative Humidity During Culex Breeding Season", subtitle = "LA County, 2017")

breeding_la_2017

# LA 2017 HUMIDITY (ALL)

all_la_2017 <- ggplot() + geom_boxplot(data = la_2017_jan, aes(x = "01", y = HourlyRelativeHumidity, fill = "01")) 
all_la_2017 <- all_la_2017 + geom_boxplot(data = la_2017_feb, aes(x = "02", y = HourlyRelativeHumidity, fill = "02"))
all_la_2017 <- all_la_2017 + geom_boxplot(data = la_2017_march, aes(x = "03.", y = HourlyRelativeHumidity, fill = "03"))
all_la_2017 <- all_la_2017 + geom_boxplot(data = la_2017_april, aes(x = "04", y = HourlyRelativeHumidity, fill = "04"))
all_la_2017 <- all_la_2017 + geom_boxplot(data = la_2017_may, aes(x = "05", y = HourlyRelativeHumidity, fill = "05"))
all_la_2017 <- all_la_2017 + geom_boxplot(data = la_2017_june, aes(x = "06", y = HourlyRelativeHumidity, fill = "06"))
all_la_2017 <- all_la_2017 + geom_boxplot(data = la_2017_july, aes(x = "07", y = HourlyRelativeHumidity, fill = "07"))
all_la_2017 <- all_la_2017 + geom_boxplot(data = la_2017_august, aes(x = "08", y = HourlyRelativeHumidity, fill = "08"))
all_la_2017 <- all_la_2017 + geom_boxplot(data = la_2017_sept, aes(x = "09.", y = HourlyRelativeHumidity, fill = "09"))
all_la_2017 <- all_la_2017 + geom_boxplot(data = la_2017_oct, aes(x = "10", y = HourlyRelativeHumidity, fill = "10"))
all_la_2017 <- all_la_2017 + geom_boxplot(data = la_2017_nov, aes(x = "11", y = HourlyRelativeHumidity, fill = "11"))
all_la_2017 <- all_la_2017 + geom_boxplot(data = la_2017_sept, aes(x = "12", y = HourlyRelativeHumidity, fill = "12"))
all_la_2017 <- all_la_2017 + xlab("Month") + ylab("Relative Humidity") + labs(title = "Monthly Relative Humidity, LA County 2017")

all_la_2017

