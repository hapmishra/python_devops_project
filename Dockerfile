# Build Stage
FROM python:3.11 AS builder

WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt

# Final Stage
FROM python:3.11

WORKDIR /app
COPY --from=builder /app /app

EXPOSE 8000

ENV FLASK_APP=app.py

CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]
