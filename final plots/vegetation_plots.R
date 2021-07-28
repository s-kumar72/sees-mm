Cases <- states_wnv$cases
Temperature <- states_wnv$temp
Vegetation <- states_wnv$veg_index
Precipitation <- states_wnv$precipitation

par(mar = c(5, 4, 4, 4) + 0.3)
plot(Temperature, Cases, pch = 16, col = 2, ylim = c(0, 150))
abline(lm(Cases~Temperature, data = states_wnv), col = 2, lwd = 2)
par(new = TRUE)
plot(Vegetation, Cases, pch = 17, col = 1, 
     axes = FALSE, xlab = "", ylab = "", ylim = c(0, 150))
abline(lm(Cases~Vegetation, data = states_wnv), col = "black", lwd = 2)
axis(side = 3, at = pretty(range(0:1)))
mtext("Vegetation Index", side = 3, line = 3)
legend(0.125, 145, legend=c("Temperature", "Vegetation Index"), col=c("red", "black"), lty = 1:1, cex = 0.8)

lmod <- lm(Cases~Vegetation, data = states_wnv)
summary(lmod)

lmod1 <- lm(Cases~Temperature, data = states_wnv)
summary(lmod1)

lmod2 <- lm(Cases~Precipitation, data = states_wnv)
summary(lmod2)

par(mar = c(5, 4, 4, 4) + 0.3)
plot(Precipitation, Cases, pch = 16, col = 2, ylim = c(0, 150))
abline(lm(Cases~Precipitation, data = states_wnv), col = 2, lwd = 2)
par(new = TRUE)
plot(Vegetation, Cases, pch = 17, col = 1, 
     axes = FALSE, xlab = "", ylab = "", ylim = c(0, 150))
abline(lm(Cases~Vegetation, data = states_wnv), col = "black", lwd = 2)
axis(side = 3, at = pretty(range(0:1)))
mtext("Vegetation Index", side = 3, line = 3)
legend(0.125, 145, legend=c("Precipitation", "Vegetation Index"), col=c("red", "black"), lty = 1:1, cex = 0.8)
