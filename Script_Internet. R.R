# Tamara Martínez Martínez
# 2067694
# 21/05/2025

internet <- read.csv("Internet.csv",  header = T)
internet$Tiempo <- as.factor(internet$Tiempo)
boxplot(internet$Velocidad ~ internet$Tiempo)
tapply(internet$Velocidad, internet$Tiempo, mean)
tapply(internet$Velocidad, internet$Tiempo, var)

shapiro.test(internet$Velocidad)
bartlett.test(internet$Velocidad ~ internet$Tiempo)
internet$Vel.sqrt <- sqrt(internet$Velocidad)
shapiro.test(internet$Vel.sqrt)

in.aov <- aov(internet$Vel.sqrt ~ internet$Tiempo)
summary(in.aov)
