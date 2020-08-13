# En este script cargamos datos con relación al directorio del proyecto. 
# Corre el código del script.
# También puedes tejer los documentos .R para generar reportes. Selecciona
# File -> Compile Report..., o presiona el botón de libreta, ¿qué ocurre?
#
# Actualiza el script para utilizar la función `here::here()`?
dat <- read.csv(here::here("datos/2019_rama-pm25.csv"))

# View a summary of the data
summary(dat)
