
FROM python:3.10


ENV APP_HOME=/app


WORKDIR $APP_HOME


COPY . $APP_HOME


RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt


CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]