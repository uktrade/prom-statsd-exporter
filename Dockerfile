FROM prom/statsd-exporter

COPY statsd_mapping.yml /tmp/statsd_mapping.yml

ENTRYPOINT ["/bin/statsd_exporter", "--statsd.mapping-config=/tmp/statsd_mapping.yml"]
