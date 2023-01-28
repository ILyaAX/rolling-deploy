FROM python:3.5

RUN apt-get update && pip install Flask

WORKDIR /opt/webapp

COPY backend.py /opt/webapp/

ENV FLASK_APP=backend.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]