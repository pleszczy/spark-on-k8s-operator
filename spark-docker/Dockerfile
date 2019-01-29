FROM gcr.io/spark-operator/spark:v2.4.0

# Setup for the Prometheus JMX exporter.
RUN mkdir -pv /etc/metrics/conf
# Add the Prometheus JMX exporter Java agent jar for exposing metrics sent to the JmxSink to Prometheus.
ADD http://central.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.9/jmx_prometheus_javaagent-0.9.jar /prometheus/
COPY conf/metrics.properties /etc/metrics/conf
COPY conf/prometheus.yaml /etc/metrics/conf
COPY conf/prometheus.yaml /prometheus

ENTRYPOINT ["/opt/entrypoint.sh"]
