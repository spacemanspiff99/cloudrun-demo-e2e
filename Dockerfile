FROM python:3.11-slim
WORKDIR /app
COPY app/ /app/
RUN pip install flask gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "main:app"]
