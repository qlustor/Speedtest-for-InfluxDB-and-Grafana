FROM python:3.7.7-alpine3.11
MAINTAINER Jon Baker <jonbaker85@gmail.com>

VOLUME /src/
COPY influxspeedtest.py requirements.txt /src/
ADD influxspeedtest /src/influxspeedtest
WORKDIR /src

RUN pip install -r requirements.txt

CMD ["python", "-u", "/src/influxspeedtest.py"]
