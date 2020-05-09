FROM openjdk:11-jre-slim

COPY ./kafka_2.12-2.5.0/ /kafka/

ENTRYPOINT [ "/kafka/bin/zookeeper-server-start.sh", "/kafka/config/zookeeper.properties" ]