FROM openjdk:11-jre-slim

COPY ./kafka_2.12-2.5.0/ /kafka/

ENTRYPOINT [ "/kafka/bin/kafka-server-start.sh", "/kafka/config/server.properties" ]