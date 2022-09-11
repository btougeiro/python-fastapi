FROM python:slim-bullseye

WORKDIR /python-fastapi

COPY requirements.txt .
COPY ./app ./app

RUN pip install -r requirements.txt

CMD [ "python", "./app/main.py" ]
