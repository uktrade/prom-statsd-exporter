FROM prom/statsd-exporter

ENV LOG_LEVEL debug

COPY statsd_mapping.yml /tmp/statsd_mapping.yml

ENTRYPOINT /bin/statsd_exporter --statsd.mapping-config=/tmp/statsd_mapping.yml --log.level="${LOG_LEVEL}"
