Cases <- avg_2018$cases
Temperature <- avg_2018$temp
Precipitation <- avg_2018$precipitation

par(mar = c(5, 4, 4, 4) + 0.3)
plot(Temperature, Cases, pch = 16, col = 2, ylim = c(0, 150))
abline(lm(Cases~Temperature, data = avg_2018), col = 2, lwd = 2)
par(new = TRUE)
plot(Precipitation, Cases, pch = 17, col = 1, 
     axes = FALSE, xlab = "", ylab = "", ylim = c(0, 150))
abline(lm(Cases~Precipitation, data = avg_2018), col = "black", lwd = 2)
axis(side = 3, at = pretty(range(0:28)))
mtext("Precipitation", side = 3, line = 3)
legend(1, 145, legend=c("Temperature", "Precipitation"), col=c("red", "black"), lty = 1:1, cex = 0.8)

Cases <- avg_2016$cases
Temperature <- avg_2016$temp
Precipitation <- avg_2016$precipitation

par(mar = c(5, 4, 4, 4) + 0.3)
plot(Temperature, Cases, pch = 16, col = 2, ylim = c(0, 150))
abline(lm(Cases~Temperature, data = avg_2016), col = 2, lwd = 2)
par(new = TRUE)
plot(Precipitation, Cases, pch = 17, col = 1, 
     axes = FALSE, xlab = "", ylab = "", ylim = c(0, 150))
abline(lm(Cases~Precipitation, data = avg_2016), col = "black", lwd = 2)
axis(side = 3, at = pretty(range(0:28)))
mtext("Precipitation", side = 3, line = 3)
legend(1, 145, legend=c("Temperature", "Precipitation"), col=c("red", "black"), lty = 1:1, cex = 0.8)

Cases <- avg_2017$cases
Temperature <- avg_2017$temp
Precipitation <- avg_2017$precipitation

par(mar = c(5, 4, 4, 4) + 0.3)
plot(Temperature, Cases, pch = 16, col = 2, ylim = c(0, 150))
abline(lm(Cases~Temperature, data = avg_2017), col = 2, lwd = 2)
par(new = TRUE)
plot(Precipitation, Cases, pch = 17, col = 1, 
     axes = FALSE, xlab = "", ylab = "", ylim = c(0, 150))
abline(lm(Cases~Precipitation, data = avg_2017), col = "black", lwd = 2)
axis(side = 3, at = pretty(range(0:28)))
mtext("Precipitation", side = 3, line = 3)
legend(1, 145, legend=c("Temperature", "Precipitation"), col=c("red", "black"), lty = 1:1, cex = 0.8)

lmod <- lm(cases~precipitation, data = avg_2017)
summary(lmod)

lmod <- lm(cases~temperature, data = avg_2017)
summary(lmod)

Cases <- avg_2019$cases
Temperature <- avg_2019$temp
Precipitation <- avg_2019$precipitation

par(mar = c(5, 4, 4, 4) + 0.3)
plot(Temperature, Cases, pch = 16, col = 2, ylim = c(0, 150))
abline(lm(Cases~Temperature, data = avg_2017), col = 2, lwd = 2)
par(new = TRUE)
plot(Precipitation, Cases, pch = 17, col = 1, 
     axes = FALSE, xlab = "", ylab = "", ylim = c(0, 150))
abline(lm(Cases~Precipitation, data = avg_2017), col = "black", lwd = 2)
axis(side = 3, at = pretty(range(0:28)))
mtext("Precipitation", side = 3, line = 3)
legend(1, 145, legend=c("Temperature", "Precipitation"), col=c("red", "black"), lty = 1:1, cex = 0.8)

lmod <- lm(cases~precipitation, data = avg_2019)
summary(lmod)

lmod <- lm(cases~temperature, data = avg_2019)
summary(lmod)
