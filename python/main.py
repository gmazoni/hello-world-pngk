import uvicorn
import os
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def say_hello():
    return 'Hello from Pitão: ' + os.getenv('APP_NAME')


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=int(os.getenv("PORT")))
