FROM python:3.8-slim-buster

WORKDIR /app

COPY . /app/

RUN pip install -r requirements.txt

RUN chmod +x /app

EXPOSE 8000

# CMD python -m flask --app board run --port 8000 --debug --host=0.0.0.0
CMD [ "python", "-m", "flask", "--app", "board", "run", "--port", "8000", "--debug", "--host", "0.0.0.0"]