# Marco Aurelio González Tagle
# 123456
# 02/04/2025

# Ejercicio 1
# H0 = 

grupo <- gl(2,12,labels = c("Fotografia", "Araña"))
ansiedad <- c(30, 35, 45, 40, 50, 35, 55, 25, 30, 45,
              40, 50, 40, 35, 50, 55, 65, 55, 50, 35, 30, 50,
              60, 39)
datos <- data.frame(grupo, ansiedad)
head(datos)


# Revisar datos mediante un boxplot

png("Ansiedad.png", width = 6, height = 4, units = "in",
    res =300)
boxplot(datos$ansiedad  ~ datos$grupo,
        col = "lightblue",
        xlab = "Grupo",
        ylab = "Nivel Ansiedad")
dev.off()

boxplot(datos$ansiedad  ~ datos$grupo,
        col = "lightblue",
        xlab = "Grupo",
        ylab = "Nivel Ansiedad")
# revisar normalidad de datos

shapiro.test(datos$ansiedad)
# El valor de p de la pruba es 0.4977 por lo tanto los datios
# se comportan de manera normal.


tapply(datos$ansiedad, datos$grupo, mean)
tapply(datos$ansiedad, datos$grupo, var)

# revisar la homogeneidad de varianzas utilizamos la sig. función

bartlett.test(datos$ansiedad, datos$grupo)
# la prueba de barlett arroja que las varianzas son iguales
# el pvalue es 0.5795


# Realizar la prueba de t

t.test(datos$ansiedad ~ datos$grupo, var.equal = T)


# Probar si grupo araña es mayor que grupo fotografia
# alternative = "greater"

t.test(datos$ansiedad ~ datos$grupo, var.equal = T,
       alternative = "greater")

t.test(datos$ansiedad ~ datos$grupo, var.equal = T,
       alternative = "less")
