from fastapi import FastAPI

app = FastAPI()

@app.get("/convertir")
def convertir(celsius: float):
    fahrenheit = (celsius * 9/5) + 32
    return {"celsius": celsius, "fahrenheit": fahrenheit}