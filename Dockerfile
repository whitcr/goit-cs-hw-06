FROM python:3.10

ENV APP_DIR /application

WORKDIR $APP_DIR

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 3000

CMD [ "python", "main.py" ]