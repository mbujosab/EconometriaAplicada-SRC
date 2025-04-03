# Usa una imagen base de Jupyter que incluya Python y Jupyter
FROM jupyter/scipy-notebook:latest

# Instala LaTeX (texlive-full)
USER root
RUN apt-get update && \
    apt-get install -y texlive-full && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Cambia de nuevo al usuario jovyan
USER $NB_UID

# Copia los archivos de tu repositorio al contenedor
COPY . /home/jovyan/work

# Establece el directorio de trabajo
WORKDIR /home/jovyan/work

# Especifica el comando por defecto
CMD ["start-notebook.sh"]