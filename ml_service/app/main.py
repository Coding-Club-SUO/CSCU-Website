from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return{"message": "ml_service is running"}
