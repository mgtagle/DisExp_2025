# Marco Aurelio González Tagle
# 0123456
# 31/03/2025


# La funcion read.csv sirve para imrportar datos
trees <- read.csv("practica2.csv", header = T)

# la función as.factor sirve para convertir caracteres a factores
trees$Species <- as.factor(trees$Species)
trees$Crown <- as.factor(trees$Crown)

# Gráfica del diámetro
boxplot(trees$Diameter ~ trees$Species,
        xlab = "Especies", # etiqueta del eje x
        ylab = "Dbh (cm)", # etiqueta del eje y
        col = "indianred", # Color de las cajas
        main = "Inventario", # Título de gráfica
        ylim = c(5,25)) # Ampliar limites eje y


# Gráfica de altura

boxplot(trees$Height ~ trees$Species,
        xlab = "Especies",
        ylab = "Altura (m)",
        col = "lightgreen",
        main = "Invenatrio",
        ylim = c(5,25))


# Histograma de altura

hist(trees$Height,
     xlab = "Altura (m)",
     ylab = "Frecuencia",
     main = "Categorias de altura",
     col = "lightblue")

# Hoaja y tallo

stem(trees$Height)
