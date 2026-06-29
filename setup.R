# setup.R
# Instala los paquetes necesarios para correr la notebook.
# Ejecutar UNA sola vez:  source("setup.R")

paquetes <- c(
  "tidyverse",   # ggplot2, dplyr, tidyr, readr, purrr, tibble, stringr, forcats
  "corrplot"     # matriz de correlaciones (sección 6 de la notebook)
)

instalar <- paquetes[!(paquetes %in% installed.packages()[, "Package"])]

if (length(instalar) > 0) {
  cat("Instalando:", paste(instalar, collapse = ", "), "\n")
  install.packages(instalar, repos = "https://cloud.r-project.org")
} else {
  cat("Todos los paquetes ya están instalados. Listo para correr la notebook.\n")
}