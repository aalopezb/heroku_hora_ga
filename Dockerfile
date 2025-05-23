
FROM python:3.10-slim


WORKDIR /app


COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt # Añadí --no-cache-dir


COPY . /app

EXPOSE 5000

CMD ["python", "app.py"]
