FROM python:3.12.0b1-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

ENV FLASK_APP=weather.py

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
