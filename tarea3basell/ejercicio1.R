#1. En la base de datos practicaplr se encuentra una tabla que se llama notas,
# realizar un código en R que le permita conectarse a la base de datos
#practicaplr y luego copiar la tabla notas a la base de datos
#practicaplr<nombre>.

# Cargamos la libreria RPostgreSQL
library(RPostgreSQL)

# Instanciamos el objeto tipo driver y nos
# conecamos a la base de datos
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname="practicaplr", port=5432, user="mario", password="dataBASE**123**")

# Información de las tablas en la base de datos
# Se pregunta si existe la tabla notas
# Campos de la tabla notas

dbListTables(con)  # 

dbExistsTable(con,"notas")

dbListFields(con,"notas")

# Recupera toda la tabla notas y los almacena
# en la variable dfNotas como un
# data frame.
# Se realizan otras operaciones.

dfNotas <-dbReadTable(con,"notas")
head(dfNotas, 10)

### Liberamos los recursos

dbDisconnect(con)
dbUnloadDriver(drv)

# Nos conectamos a la base practicaplrmario
# Instanciamos el objeto tipo driver y nos
# conecamos a la base de datos
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname="practicaplrmario", port=5432, user="mario", password="dataBASE**123**")

# Información de las tablas en la base de datos
# Se pregunta si existe la tabla notas
# Campos de la tabla notas

dbListTables(con)  # 

dbExistsTable(con,"notas")

### Escribiendo dataframes a una base de datos PostgreSQL

dbWriteTable(con,"notas", dfNotas)

# Información de las tablas en la base de datos
# Se pregunta si existe la tabla notas
# Campos de la tabla notas

dbListTables(con)  # 

dbExistsTable(con,"notas")

dbListFields(con,"notas")

# Recupera toda la tabla notas y los almacena
# en la variable dfNotas como un
# data frame.
# Se realizan otras operaciones.

dfNotas <-dbReadTable(con,"notas")
head(dfNotas, 10)
