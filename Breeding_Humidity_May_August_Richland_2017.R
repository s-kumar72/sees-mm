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

# RICHLAND 2017 

richland_2017_jan <- richland_2017[1:1202,]
richland_2017_feb <- richland_2017[1203:2106,]
richland_2017_march <- richland_2017[2107:3137,]
richland_2017_april <- richland_2017[3138:4198,]
richland_2017_may <- richland_2017[4199:5356,]
richland_2017_june <- richland_2017[5357:6471,]
richland_2017_july <- richland_2017[6472:7584,]
richland_2017_august <- richland_2017[7585:8724,]
richland_2017_sept <- richland_2017[8725:9705,]
richland_2017_oct <- richland_2017[9706:10787,]
richland_2017_nov <- richland_2017[10788:11840,]
richland_2017_dec <- richland_2017[11841:12982,]

# RICHLAND 2017 HUMIDITY (BREEDING)

breeding_richland_2017 <- ggplot() + geom_boxplot(data = richland_2017_may, aes(x = "May", y = HourlyRelativeHumidity, fill = "May")) 
breeding_richland_2017 <- breeding_richland_2017 + geom_boxplot(data = richland_2017_june, aes(x = "June", y = HourlyRelativeHumidity, fill = "June"))
breeding_richland_2017 <- breeding_richland_2017 + geom_boxplot(data = richland_2017_july, aes(x = "July", y = HourlyRelativeHumidity, fill = "July"))
breeding_richland_2017 <- breeding_richland_2017 + geom_boxplot(data = richland_2017_august, aes(x = "August", y = HourlyRelativeHumidity, fill = "August"))
breeding_richland_2017 <- breeding_richland_2017 + xlab("Month") + ylab("Relative Humidity") + labs(title = "Relative Humidity During Culex Breeding Season", subtitle = "Richland County, 2017")

breeding_richland_2017

# RICHLAND 2017 HUMIDITY (ALL)

all_richland_2017 <- ggplot() + geom_boxplot(data = richland_2017_jan, aes(x = "01", y = HourlyRelativeHumidity, fill = "01")) 
all_richland_2017 <- all_richland_2017 + geom_boxplot(data = richland_2017_feb, aes(x = "02", y = HourlyRelativeHumidity, fill = "02"))
all_richland_2017 <- all_richland_2017 + geom_boxplot(data = richland_2017_march, aes(x = "03", y = HourlyRelativeHumidity, fill = "03"))
all_richland_2017 <- all_richland_2017 + geom_boxplot(data = richland_2017_april, aes(x = "04", y = HourlyRelativeHumidity, fill = "04"))
all_richland_2017 <- all_richland_2017 + geom_boxplot(data = richland_2017_may, aes(x = "05", y = HourlyRelativeHumidity, fill = "05"))
all_richland_2017 <- all_richland_2017 + geom_boxplot(data = richland_2017_june, aes(x = "06", y = HourlyRelativeHumidity, fill = "06"))
all_richland_2017 <- all_richland_2017 + geom_boxplot(data = richland_2017_july, aes(x = "07", y = HourlyRelativeHumidity, fill = "07"))
all_richland_2017 <- all_richland_2017 + geom_boxplot(data = richland_2017_august, aes(x = "08", y = HourlyRelativeHumidity, fill = "08"))
all_richland_2017 <- all_richland_2017 + geom_boxplot(data = richland_2017_sept, aes(x = "09", y = HourlyRelativeHumidity, fill = "09"))
all_richland_2017 <- all_richland_2017 + geom_boxplot(data = richland_2017_oct, aes(x = "10", y = HourlyRelativeHumidity, fill = "10"))
all_richland_2017 <- all_richland_2017 + geom_boxplot(data = richland_2017_nov, aes(x = "11", y = HourlyRelativeHumidity, fill = "11"))
all_richland_2017 <- all_richland_2017 + geom_boxplot(data = richland_2017_dec, aes(x = "12", y = HourlyRelativeHumidity, fill = "12"))
all_richland_2017 <- all_richland_2017 + xlab("Month") + ylab("Relative Humidity") + labs(title = "Monthly Relative Humidity, Richland County 2017")

all_richland_2017
