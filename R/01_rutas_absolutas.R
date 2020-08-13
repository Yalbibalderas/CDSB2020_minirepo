# Arregla la ruta y carga los datos

library(here)
library(fs)

datos <- read.csv("datos/2019_rama-pm25.csv")
datos2 <- read.csv(here::here("datos/2019_rama-pm25.csv"))
datos3 <- read.csv(fs::path("datos/2019_rama-pm25.csv"))

# Ve los datos
View(datos3)
