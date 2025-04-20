# Proyecto FastAPI: Conversor de Temperatura

Este proyecto es una aplicación sencilla desarrollada con **FastAPI** que permite convertir temperaturas de Celsius a Fahrenheit a través de un servidor API.

## Características
- Conversión de temperaturas de Celsius a Fahrenheit.
- Documentación interactiva generada automáticamente con Swagger en `/docs`.
- Implementado con FastAPI y ejecutado con Uvicorn.

## Requisitos Previos
- Python 3.7 o superior.
- Entorno virtual configurado (opcional pero recomendado).

## Instalación
1. Clona este repositorio:
   ```bash
   git clone https://github.com/Javl14789/prueba1.git
   cd prueba1
   ```

2. Crea y activa un entorno virtual:
   ```bash
   python3 -m venv env
   source env/bin/activate  # En macOS/Linux
   env\Scripts\activate   # En Windows
   ```

3. Instala las dependencias:
   ```bash
   pip install fastapi uvicorn
   ```

## Uso
1. Ejecuta el servidor:
   ```bash
   uvicorn main:app --reload
   ```

2. Accede a la documentación interactiva en:
   - `http://127.0.0.1:8000/docs` (Swagger UI)
   - `http://127.0.0.1:8000/redoc` (ReDoc)

3. Realiza solicitudes al endpoint `/convertir` proporcionando un valor en Celsius como parámetro de consulta.

## Ejemplo de Solicitud
```bash
GET /convertir?celsius=25
```
Respuesta:
```json
{
  "celsius": 25,
  "fahrenheit": 77
}
```

## Contribuciones
¡Las contribuciones son bienvenidas! Si deseas contribuir, por favor abre un issue o un pull request.

## Licencia
Este proyecto está bajo la Licencia MIT.