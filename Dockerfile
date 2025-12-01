FROM python@sha256:610ede222c1fa9675c694c99429f8d2c1b4e243f1982246da9e540eb5800ee4a
WORKDIR /app
RUN python -m ensurepip && pip install --no-cache-dir flask==3.0.0
COPY app.py .
EXPOSE 8080
CMD ["python", "app.py"]