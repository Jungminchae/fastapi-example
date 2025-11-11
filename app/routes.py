from fastapi import APIRouter

router = APIRouter()


@router.get("/hello")
async def say_hello() -> dict:
    return {"results": "hello"}

@router.get("/bye")
async def say_bye() -> dict:
    return {"result": "bye"}