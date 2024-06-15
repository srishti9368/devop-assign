from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}
@app.get("new-feature")
def new_feature():
    return {"msg": "this is a new feature"}
