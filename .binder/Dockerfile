# Usa una imagen base que ya tenga LaTeX instalado
FROM tianon/latex

# Copia los archivos de tu repositorio al contenedor
COPY . /home/jovyan/work

# Establece el directorio de trabajo
WORKDIR /home/jovyan/work

# Especifica el comando por defecto
CMD ["start-notebook.sh"]