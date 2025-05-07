# Importar datos de internet

url <- "https://raw.githubusercontent.com/mgtagle/Exp_Met_Est_AD2023/refs/heads/main/Scripts/localidades.csv"

datos <- read.csv(url, header  = T)
datos$Paraje <- as.factor(datos$Paraje)


boxplot(datos$DAP ~ datos$Paraje,
        col = "indianred",
        xlab = "Localidades",
        ylab = "DAP (cm)")

tapply(datos$DAP, datos$Paraje, mean)
tapply(datos$DAP, datos$Paraje, var)

shapiro.test(datos$DAP)
bartlett.test(datos$DAP ~ datos$Paraje)

datos$tlog <- log10(datos$DAP+1)

shapiro.test(datos$tlog)

datos$tsqrt <- sqrt(datos$DAP)
shapiro.test(datos$tsqrt)
bartlett.test(datos$tsqrt ~ datos$Paraje)

boxplot(datos$tsqrt ~ datos$Paraje,
        col = "indianred",
        xlab = "Localidades",
        ylab = "DAP (cm)")


# Iniciar con el AOV

par.aov <- aov(datos$tsqrt ~ datos$Paraje)
summary(par.aov)
TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))
