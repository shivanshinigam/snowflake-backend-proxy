FROM python:3.10-slim

WORKDIR /app

# Install Snowpark + runtime deps
RUN pip install --no-cache-dir \
    snowflake-snowpark-python \
    fastapi \
    uvicorn \
    pandas

COPY app /app

EXPOSE 8080

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
