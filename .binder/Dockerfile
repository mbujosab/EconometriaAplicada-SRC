# Usa una imagen base que incluya Python y Jupyter
FROM jupyter/base-notebook:latest

# Instala TeX Live (LaTeX)
RUN apt-get update && \
    apt-get install -y texlive-core

#    apt-get install -y texlive-full

# Copia los archivos de tu repositorio al contenedor
COPY . /home/jovyan/work

# Establece el directorio de trabajo
WORKDIR /home/jovyan/work

# Especifica el comando por defecto
CMD ["start-notebook.sh"]