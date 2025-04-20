# Pasos para Crear una Aplicación FastAPI para Convertir Temperatura

## Requisitos Previos
1. Asegúrate de tener Python instalado en tu sistema. Puedes verificarlo ejecutando `python --version` en tu terminal.
2. Instala `pip`, el gestor de paquetes de Python, si no lo tienes ya instalado.
3. Se recomienda crear un entorno virtual para el proyecto:
   ```bash
   python -m venv env
   source env/bin/activate  # En macOS/Linux
   env\Scripts\activate   # En Windows
   ```

## Pasos para Crear el Servidor FastAPI

1. **Instalar FastAPI y Uvicorn**
   Ejecuta el siguiente comando para instalar FastAPI y Uvicorn:
   ```bash
   pip install fastapi uvicorn
   ```

2. **Crear el Archivo Principal**
   Crea un archivo llamado `main.py` en el directorio del proyecto. Este archivo contendrá el código del servidor.

3. **Escribir el Código del Servidor**
   En el archivo `main.py`, escribe el siguiente código:
   ```python
   from fastapi import FastAPI

   app = FastAPI()

   @app.get("/convertir")
   def convertir(celsius: float):
       fahrenheit = (celsius * 9/5) + 32
       return {"celsius": celsius, "fahrenheit": fahrenheit}
   ```

4. **Ejecutar el Servidor**
   Inicia el servidor ejecutando el siguiente comando en la terminal:
   ```bash
   uvicorn main:app --reload
   ```
   Esto iniciará el servidor en `http://127.0.0.1:8000`.

5. **Probar la API**
   - Abre un navegador web y ve a `http://127.0.0.1:8000/docs` para acceder a la documentación interactiva de la API generada automáticamente por FastAPI.
   - Prueba el endpoint `/convertir` proporcionando un valor en Celsius como parámetro de consulta.

## Notas Adicionales
- Puedes detener el servidor en cualquier momento presionando `Ctrl+C` en la terminal.
- Para instalar dependencias adicionales en el futuro, recuerda activar tu entorno virtual.