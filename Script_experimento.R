crec <- read.csv("DISEX.csv", header = T)
crec$sustrato <- as.factor(crec$sustrato)
boxplot(crec$Crecimiento~crec$sustrato,
        xlab = "sustrato",
        ylab = "Crecimiento")
tapply(crec$Crecimiento, crec$sustrato, mean)
tapply(crec$Crecimiento, crec$sustrato, var)
shapiro.test(crec$Crecimiento)
bartlett.test(crec$Crecimiento~crec$sustrato)
crec.aov <- aov(crec$Crecimiento~crec$sustrato)
summary(crec.aov)
TukeyHSD(crec.aov)
plot(TukeyHSD(crec.aov))
tapply(crec$Crecimiento, crec$sustrato, length)
