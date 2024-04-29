# Usa una imagen base de Python
FROM python:3.12

# Establece el directorio de trabajo en /app
WORKDIR /app


# Copia el contenido del directorio actual al contenedor en /app
COPY . /app

# Instala las dependencias especificadas en requirements.txt
RUN apt-get update && apt-get install -y librtlsdr-dev && pip install --no-cache-dir -r requirements.txt 


# Ejecuta app.py cuando el contenedor se inicie
CMD [ "python", "app.py" ]