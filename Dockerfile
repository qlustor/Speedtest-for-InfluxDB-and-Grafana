FROM python:3.7.7-alpine3.11
MAINTAINER Adam Juraszek <juriad@gmail.com>

WORKDIR /src
COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY influxspeedtest/ ./influxspeedtest

CMD ["python", "-m", "influxspeedtest"]
