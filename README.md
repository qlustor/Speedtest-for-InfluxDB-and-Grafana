**Speedtest.net Collector For InfluxDB and Grafana**
------------------------------

This tool is a wrapper for speedtest-cli which allows you to run periodic speedtests and save the results to Influxdb 

It can run forever or as a single-shot (configure `DELAY`). 

## Changes

- Environment Variables used to configure client
- Removed config.ini 
- Used specific version of Alpine/Python build
- Change how the program is started
- Better cache use during docker build 

## Docker run

```bash
docker pull qlustor/speedflux
docker run --name speedflux -e INFLUXDB_ADDRESS=influxdb -e DELAY=300 qlustor/speedflux
```

## Environment Variables

|Key                     |Description                            | Default   |
|:-----------------------|:--------------------------------------|:----------|
|NAMESPACE               |Name Space for data ( multi-instance ) |           |
|INFLUXDB_ADDRESS        |Host Address of InfluxDB               |localhost  |
|INFLUXDB_PORT           |InfluxDB port to connect to            |8086       |
|INFLUXDB_DB             |Database to write collected stats to   |speedtests |
|INFLUXDB_USER           |User that has access to the database   |admin      |
|INFLUXDB_PW             |Password for above user                |admin      |
|INFLUXDB_SSL            |Enable SSL                             |False      |
|INFLUXDB_VERIFY         |Verify SSL                             |False      |
|SERVER                  |Comma sperated list of servers         |''         |
|LOGGING                 |Set how verbose the console output is  |Debug      |
|DELAY                   |Set how often to run a test in seconds |-1         |
