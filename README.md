**Speedtest.net Collector For InfluxDB and Grafana**
------------------------------

This tool is a wrapper for speedtest-cli which allows you to run periodic speedtests and save the results to Influxdb 

The original container is built to run forever, this fork however will run and then terminate once completed.

## Changes

- Environment Variables used to configure client
- Removed delay and loop making it a one shot container (Can be scheduled with a cronjob now in K8's)
- Removed config.ini 
- Used specific version of Alpine/Python build

## Docker run

```bash
docker pull angryninja/speedtest
docker run --name speedtest --env-file=influx.env angryninja/speedtest
```


## Environment Variables

|Key                     |Description                           | Default   |
|:-----------------------|:-------------------------------------|:----------|
|INFLUXDB_ADDRESS        |Host Address of InfluxDB              |localhost  |
|INFLUXDB_PORT           |InfluxDB port to connect to           |8086       |
|INFLUXDB_DB             |Database to write collected stats to  |speedtests |
|INFLUXDB_USER           |User that has access to the database  |admin      |
|INFLUXDB_PW             |Password for above user               |admin      |
|INFLUXDB_SSL            |Enable SSL                            |False      |
|INFLUXDB_VERIFY         |Verify SSL                            |False      |
|SERVER                  |Comma sperated list of servers        |''         |
|LOGGING                 |Set how verbose the console output is |Debug      |


