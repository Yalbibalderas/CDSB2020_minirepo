# Texto sin acentos

# Corrobora que tu variable de ambiente 'R_LIBS_USER' esté direccionada hacia
# el directorio de la nueva version de R
# Pista: usa la funcion Sys.getenv()

# Instala las paqueterias 'fs' y 'tibble'

# Verifica que las paqueterias se instalaron en el nuevo directorio
# Pista: puedes usar esta estructura
# installed.packages("mi-nuevo-directorio') %>% as_tibble()

# Ahora puedes instalar todas las paqueterías de tu directorio anterior
# (o algunas de ellas) en la nueva ubicación
# Pista: puedes guardar la lista de paquetes instalados en una variable para
# despues seleccionar los elementos de tu interes
# pkgs <- installed.packages() %>% as_tibble()
# install.packages(pkgs$Package)
