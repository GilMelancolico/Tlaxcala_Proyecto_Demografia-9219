# 1. Remover los objetos
rm(list = ls())

# 2. Instalar paquetes 
install.packages("data.table", 
                 dependencies = T)

library(data.table)

# 3. Descargar tablas de datos
pop <- fread("https://repodatos.atdt.gob.mx/CONAPO/proyecciones/00_Pob_Mitad_1950_2070.csv")

# 4. Exploración de la tabla de población
table(pop$ENTIDAD)
table(pop$CVE_GEO)
table(pop$ANIO)

names(pop)
sum(pop$POBLACION)

# Filtrar Estado

poblacion <- pop[pop$ENTIDAD == "Tlaxcala"]
poblacion

install.packages("rmarkdown", dependence = T)
install.packages("knitr", dependece =T)
