#!/bin/bash

file_name=config.ini
if [ -z ${var+SPEEDTEST_DELAY} ]
then
        sed -i '/Delay/c\Delay = ${SPEEDTEST_DELAY}' $file_name
fi

if [ -z ${var+CONSOLE_OUTPUT} ]
then
        sed -i '/Output/c\Output = ${CONSOLE_OUTPUT}' $file_name
fi

if [ -z ${var+INFLUXDB_IP} ]
then
        sed -i '/Address/c\Address = ${INFLUXDB_IP}' $file_name
fi

if [ -z ${var+INFLUXDB_DB_NAME} ]
then
        sed -i '/Database/c\Database = ${INFLUXDB_DB_NAME}' $file_name
fi

if [ -z ${var+INFLUXDB_USERNAME} ]
then
        sed -i '/Username/c\Username = $(INFLUXDB_USERNAME}' $file_name
fi

if [ -z ${var+INFLUXDB_PASSWORD} ]
then
        sed -i '/Password/c\Password = ${INFLUXDB_PASSWORD}' $file_name
fi

if [ -z ${var+VERIFY_SSL} ]
then
        sed -i '/Verify_SSL/c\Verify_SSL = ${VERIFY_SSL}' $file_name
fi

python InfluxdbSpeedtest.py
