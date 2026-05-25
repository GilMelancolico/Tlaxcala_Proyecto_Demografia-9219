# Análisis Demográfico del Estado de Tlaxcala (2010, 2019 y 2021) 📊

**Universidad Nacional Autónoma de México (UNAM)** **Facultad de Ciencias** **Autores:**
* Emmanuel Escobar Gutiérrez
* Nicolas de Silva Nacenta

---

## 📌 Descripción del Proyecto
Este repositorio contiene el código y los datos necesarios para la construcción de **tablas de vida abreviadas** para el estado de Tlaxcala. El objetivo principal del estudio es analizar el impacto demográfico a través del tiempo en la esperanza de vida y la estructura de mortalidad por sexo, prestando especial atención a los efectos provocados por la crisis sanitaria (COVID-19) entre los años 2019 y 2021.

## 🗂️ Estructura del Repositorio
* `Trabajo_Final_9219.qmd`: Documento principal de Quarto con todo el código en R, cálculos algorítmicos y generación de gráficas.
* `Trabajo_Final_9219.pdf`: Reporte final compilado con formato académico, tablas de resultados y análisis demográfico.
* `data/`: Carpeta que contiene los insumos originales en formato `.csv` y `.xlsx` procesados a partir de las fuentes oficiales.

## 📈 Metodología y Fuentes de Datos
1. **Mortalidad y Tablas de Vida (Tlaxcala):**
   * **Fuentes:** Censos de población y vivienda de INEGI (2010 y 2020).
   * **Proyección:** Estimación exponencial de la población y defunciones a mitad de año para los periodos intercensales (2019 y 2021).
   * **Cálculo:** Tasas centrales de mortalidad ($_{n}m_{x}$), probabilidades de fallecer ($_{n}q_{x}$), sobrevivientes ($l_{x}$) y esperanza de vida ($e_{x}^{0}$), implementando el ajuste de **Coale-Demeny** para la mortalidad infantil.
2. **Fertilidad:**
   * **Fuentes:** *World Population Prospects 2024* (WPP) de las Naciones Unidas.
   * **Cálculo:** Obtención de la Tasa Global de Fecundidad y la Edad Media de la Fecundidad para México y Finlandia.

## 💡 Hallazgos Principales
* **Caída en la Esperanza de Vida:** Se observó un retroceso histórico provocado por la crisis sanitaria. La esperanza de vida masculina ($e_{0}$) cayó drásticamente de 75.00 años en 2010 a **64.56 años en 2021**.
* **Brecha de Género:** La sobremortalidad masculina durante la pandemia duplicó la brecha de género, pasando de 3.83 años de diferencia en 2010 a **8.87 años en 2021** a favor de las mujeres.
* **Mortalidad Selectiva:** El incremento de la mortalidad impactó severamente a los grupos de edad avanzada (aumentando un 22% el riesgo de muerte en hombres de 60 a 65 años), mientras que la mortalidad infantil se mantuvo estable.

## 🛠️ Reproducibilidad (Instrucciones para Revisión)
Este proyecto está diseñado para ser **100% reproducible**. No es necesario modificar ninguna ruta local absoluta.

Para compilar el proyecto:
1. Clonar este repositorio.
2. Abrir el archivo `Trabajo_Final_9219.qmd` en RStudio.
3. Asegurarse de tener instalados los paquetes utilizados (`dplyr`, `readxl`, `data.table`, `ggplot2`, `knitr`).
4. Hacer clic en el botón **Render**. 

## ⚙️ Requisitos y Dependencias
Para poder ejecutar el código y compilar el documento sin errores, es necesario tener instaladas las siguientes librerías en R:

* `lubridate`
* `data.table`
* `ggplot2`
* `dplyr`
* `tidyr`
* `readxl`
* `readr`

> **⚠️ Nota sobre la compilación del PDF:**
> Para la generación del documento final (`Trabajo_Final_9219.pdf`), este proyecto asume que el sistema cuenta con una distribución completa de LaTeX (como **MiKTeX**). Por este motivo, las librerías `tinytex` y `kableExtra` fueron omitidas del código fuente, esto debido a problemas de renderización con las librerias
