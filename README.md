# 💻 Laptops — 

Dataset sintético de **300 laptops**. Tiene variables
numéricas en escalas distintas + variable categórica con 4 niveles),
mismos patrones visuales, mismos paquetes (`ggplot2`, `dplyr`).

## 📊 Notebook publicada

👉 **https://anahaique.github.io/C_de_Datos/laptops_exploratorio.html**

## 📁 Contenido del repositorio

| Archivo                       | Descripción                                                  |
|-------------------------------|--------------------------------------------------------------|
| `laptops.csv`                 | Dataset de 300 laptops × 7 variables                         |
| `laptops_exploratorio.qmd`    | Notebook Quarto con el EDA en `ggplot2`                      |
| `setup.R`                     | Script para instalar dependencias (tidyverse + corrplot)     |
| `.gitignore`                  | Excluye archivos generados por Quarto y RStudio              |
| `.nojekyll`                   | Necesario para que GitHub Pages sirva correctamente          |

## 🚀 Cómo usarla en local

### 1. Instalar dependencias (una sola vez)

```r
source("setup.R")
```

### 2. Abrir y renderear

En **RStudio**: abrí `laptops_exploratorio.qmd` y clickeá **Render**.

Desde la **terminal**:

```bash
quarto render laptops_exploratorio.qmd --to html --embed-resources
```

El flag `--embed-resources` produce un único `.html` autocontenido (código +
gráficos + datos embebidos) que se abre en cualquier navegador sin necesidad
de tener R ni Quarto instalados.

## 🔄 Variables del dataset

| Variable             | Tipo              | Descripción                                    | Unidad / Rango            |
|----------------------|-------------------|------------------------------------------------|---------------------------|
| `tipo`               | Categórica (4)    | Gaming / Ultrabook / Workstation / Budget      | —                         |
| `marca`              | Categórica (6)    | Dell, HP, Lenovo, Apple, Asus, MSI             | —                         |
| `ram_gb`             | Numérica continua | Memoria RAM                                    | 4 – 128 GB                |
| `cpu_score`          | Numérica continua | Benchmark de CPU normalizado                   | 0 – 100                   |
| `pantalla_pulgadas`  | Numérica continua | Tamaño de pantalla                             | 13 – 17"                  |
| `peso_kg`            | Numérica continua | Peso total                                     | 1.0 – 3.5 kg              |
| `precio_usd`         | Numérica continua | Precio de venta al público                     | $350 – $4500              |

### Patrones esperables por tipo

- **Gaming**: pesados (2.2–3.5 kg), pantallas grandes (15–17"), CPU alto,
  precio alto.
- **Ultrabook**: livianos (1.0–1.5 kg), pantallas chicas (13–14"), CPU
  medio-alto, precio alto.
- **Workstation**: muy pesados, RAM altísima (32–128 GB), precio muy alto.
- **Budget**: livianos, specs modestas, precio bajo.

### Datos faltantes (intencionales)

- `peso_kg`: ~3% de NaN
- `cpu_score`: ~4% de NaN

Sirven para practicar `drop_na()` y `replace_na()`, igual que los faltantes
en `sex` y en medidas del pico en `palmerpenguins`.

## 📝 Licencia

Uso educativo libre. Si lo usás en una clase o un paper, una mención
agradecida es bienvenida.
