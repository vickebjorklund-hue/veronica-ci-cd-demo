from fastapi import FastAPI
from app.service import add, divide

app = FastAPI(title="DEVOPS25 CI/CD Demo")


@app.get("/health")
def health():
    return {"status": "ok"}


@app.get("/api/add")
def api_add(a: int, b: int):
    return {"result": add(a, b)}


@app.get("/api/divide")
def api_divide(a: float, b: float):
    return {"result": divide(a, b)}

@app.get("/version")
def version():
    return {
        "version": "1.1",
        "environment": "demo",
    }
