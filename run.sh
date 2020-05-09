(docker network create --attachable kafka_network || true ) &&


(docker container rm zookeeper -f || true ) &&
(docker container rm kafka-server -f || true ) &&


docker build --rm -f "zookeeper.Dockerfile" -t zookeeper:latest . &&
docker run -d -p 2181:2181 --name=zookeeper --network=kafka_network zookeeper:latest


docker build --rm -f "kafka-server.Dockerfile" -t kafka-server:latest . &&
docker run -d -p 9092:9092 --name=kafka-server --network=kafka_network kafka-server:latest

