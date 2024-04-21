FROM python:3.8

ENV FLASK_APP=core/server.py

WORKDIR /fyle-interview-intern-backend

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN rm -f core/store.sqlite3

RUN flask db upgrade -d core/migrations/

CMD ["bash", "run.sh"]





