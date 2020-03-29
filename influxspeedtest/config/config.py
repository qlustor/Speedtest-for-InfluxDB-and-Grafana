import os

class Settings():

    def __init__(self):

        self.influx_address = os.getenv('INFLUXDB_ADDRESS', 'localhost')
        self.influx_port = int(os.getenv('INFLUXDB_PORT', 8086))
        self.influx_database = os.getenv('INFLUXDB_DB', 'speedtests')
        self.influx_user = os.getenv('INFLUXDB_USER', 'admin')
        self.influx_password = os.getenv('INFLUXDB_PW', 'admin')
        self.influx_ssl = bool(os.getenv('INFLUXDB_SSL', False))
        self.influx_verify_ssl = bool(os.getenv('INFLUXDB_VERIFY', False))
        
        # Logging
        self.logging_level = os.getenv('LOGGING', 'debug')
        self.logging_level = self.logging_level.upper()

        # Speedtest
        test_server = os.getenv('SERVER', None)
        if test_server:
            self.servers = test_server.split(',')
        else:
            self.servers = []
