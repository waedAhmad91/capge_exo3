FROM python:3.10.5-alpine3.16

WORKDIR /app

COPY app.py .

COPY ./app

EXPOSE 5000

RUN pip install -r requirements.txt

CMD ["python", "-u", "app.py"]