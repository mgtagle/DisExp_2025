# pruebas de t  dependientes

semillas <- read.csv("prod.csv", header = T)
semillas$Tiempo <- as.factor(semillas$Tiempo)

boxplot(semillas$Kgsem ~ semillas$Tiempo,
        xlab = "Periodo colecta",
        ylab = "Peso semilla (kg)",
        col = "lightgreen")

tapply(semillas$Kgsem, semillas$Tiempo, mean )
10.1066-10.8954

t.test(semillas$Kgsem ~ semillas$Tiempo, paired = T)
