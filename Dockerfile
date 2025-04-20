# Usar una imagen base de Python
FROM python:3.13-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios
COPY main.py /app/main.py
COPY env/lib/python3.13/site-packages /app/site-packages

# Instalar dependencias (si aplica)
# RUN pip install -r requirements.txt

# Exponer el puerto 8000
EXPOSE 8000

# Comando para ejecutar el servidor
CMD ["python", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]