FROM python:3.3-slim
MAINTAINER Allan Tribe <atribe13@gmail.com>

ENV INFLUXDB_HOST localhost

ADD . /src
WORKDIR /src

RUN pip install -r requirements.txt && sed -i '/^Address/c\Address = ${INFLUXDB_HOST}' config.ini

CMD ["python", "/src/InfluxdbSpeedtest.py"]
