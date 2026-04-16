FROM python:3.10-slim

WORKDIR /app
COPY . .
RUN pip install flask
# 5. Set default environment variables (build-time)
ENV APP_MODE=production
ENV  APP_REGION=canada-west

EXPOSE 5000

CMD ["python", "app.py"]
