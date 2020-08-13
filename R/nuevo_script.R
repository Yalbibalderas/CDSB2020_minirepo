library(ggplot2)

ejemplo <- data.frame(x = seq(5), y = rnorm(5,10))
ejemplo

grafica <- ggplot(ejemplo, aes(x,y)) +
  geom_point()
grafica

operacion <- function(x,y) {
  z <- sum(x,y)
  print(paste("la suma de: ", x, " mas ", y, " es: ", z, sep = ""))}

operacion(3,2)

loadedNamespaces() #todos los paquetes cargados
usethis::create_project("~/Dropbox (Personal)/Cursos_tomados/Test")  # para crear un nuevo proyecto
