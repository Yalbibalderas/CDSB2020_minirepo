# Texto sin acentos
use_course("comunidadbioinfo/explora-librerias")

#' En que directorio va a buscar R los paquetes?

# Prueba con .libPaths() y .Library
.Library
.libPaths()
installed.packages() %>% head() %>% as_tibble() %>% View()
installed.packages() %>% as_tibble() %>% View()

#' Paquetes instalados

## Usa installed.packages() para obtener los paquetes instalados
## Si lo deseas puedes observar estos datos en un data frame o tibble
## Recuerda utilizar View(), dplyr::glimpse(), o una funcion similar
## para explorar los datos

## Cuantos paquetes tienes?
# 16
installed.packages() %>% glimpse() %>% View()
installed.packages() %>% as_tibble() %>% nrow()


#' Explora los paquetes que tienes instalados

## Puedes contar algunas cosas! Aqui hay algunas ideas:
##   * Ordena los paquetes de acuerdo con su LibPath, Priority, o ambos
installed.packages() %>% as_tibble() %>% filter(Priority == "base") %>% View()
installed.packages() %>% as_tibble() %>% arrange(Priority, LibPath) %>% View()

##   * Cuantos de ellos necesitan ser compilados?
installed.packages() %>% as_tibble() %>% filter(NeedsCompilation == "yes") %>% View()

##   * En que version de R se construyeron?
installed.packages() %>% as_tibble() %>% select(Built) %>% View()
installed.packages() %>% as_tibble() %>% select(Built) %>% table()

## Para los amantes del tidyverse, aqui hay algunas funciones utiles
# data %>% count(var)
# data %>% count(var1, var2)
# data %>% count(var) %>% mutate(prop = n / sum(n))

#' Algunos puntos para reflexionar

## Puedes tomar notas para ti mismo sobre puntos importantes del
## ejercicio anterior, algunas sugerencias son:
##   * El numero de paquete de R base y los paquetes recomendados
installed.packages() %>% as_tibble() %>% select(Priority) %>% table()
#installed.packages() %>% as_tibble() %>% filter(!is.na(Suggests)) %>% View()
##     tienen sentido para ti? SI
##   * Como se relaciona el resultado de .libPaths() con el de .Library?
# Ambos están relacionados con en donde están guardados los paquetes

#' Actividades adicionales

## Si aun te queda tiempo hagamos estos ejercicios...

## Cuantos paquetes pertenecen ya sea a paquetes base o recomendados? Son todos
## los que tenemos instalados? NO
installed.packages() %>% as_tibble() %>% select(Priority) %>% table()
installed.packages() %>% as_tibble() %>% count(Priority)

## Como es el estilo de los nombres de los paquetes instalados? (estan escritos
## con minusculas? Contienen signos de puntuacion . - _ ? ), etc.
#NO

## Usa el argumento `fields` de installed.packages() para obtener mas
## informacion y explora los datos.

installed.packages(fields = "Maintainer") %>% as_tibble() %>% View()


