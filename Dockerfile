FROM python:3.14-alpine

WORKDIR /app

COPY ./pyproject.toml uv.lock /app/

RUN pip3 install uv
RUN uv venv .venv && uv sync --frozen --no-dev

COPY ./app /app/app

CMD [ "uv", "run", "gunicorn", "-c" ,"app/gunicorn.config.py"]