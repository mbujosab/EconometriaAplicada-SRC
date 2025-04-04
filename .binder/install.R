# install.R
# Función auxiliar para instalar desde CRAN si no está ya instalado
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = FALSE)) {
    install.packages(pkg, repos = "https://cloud.r-project.org")
  }
}

install_if_missing("tfarima")      # librería de José Luis Gallego para Time Series
install_if_missing("latticeExtra") # para gráficos con doble eje vertical (doubleYScale)
install_if_missing("readr")        # para leer ficheros CSV
install_if_missing("ggplot2")      # para el scatterplot (alternaticamente library(tidyverse))
install_if_missing("jtools")       # para representación resultados estimación
install_if_missing("zoo")          # para generar objetos ts (time series)
install_if_missing("pastecs")      # resumen estadísticos descriptivos
# https://cran.r-project.org/web/packages/pastecs/index.html (stat.desc)
install_if_missing("knitr")        # presentación de tabla resumen
# https://cran.r-project.org/web/packages/knitr/index.html (kable)
# https://bookdown.org/yihui/rmarkdown-cookbook/kable.html
install_if_missing("moments")      # Perform the Jarque-Bera test
install_if_missing("tseries")      # Perform the Jarque-Bera test
