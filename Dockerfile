FROM FROM arm64v8/python:3.7-slim

WORKDIR /app

COPY ./analytics /app/analytics
COPY ./db /app/db

# Install any needed dependencies specified in requirements.txt
RUN pip install --upgrade pip && pip install -r /app/analytics/requirements.txt

EXPOSE 5153

CMD ["python", "/app/analytics/app.py"]
