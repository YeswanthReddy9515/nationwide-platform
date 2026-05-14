
FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

RUN useradd -m etluser

USER etluser

CMD ["python","main.py"]
