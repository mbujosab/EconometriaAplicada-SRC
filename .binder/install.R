# install.R

# Función auxiliar para instalar desde CRAN si no está ya instalado
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg, repos = "https://cloud.r-project.org")
  }
}

# Instalar tfarima desde CRAN
install_if_missing("tfarima")
cat("tfarima instalado correctamente\n")

install_if_missing("devtools")

# Instala tfarima desde GitHub
devtools::install_github("fiorucci/tfarima")
