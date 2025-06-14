from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/hello")
def read_root():
    return {"message": "Всем здравствуйте!""}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
