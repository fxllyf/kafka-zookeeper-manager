docker pull dockerkafka/zookeeper

docker pull dockerkafka/kafka

docker pull dockerkafka/kafka-manager

docker run -it--rm --name kafkadocker_zookeeper_1 -p 2181:2181 dockerkafka/zookeeper

docker run -it--rm --name kafkadocker_kafka_1 --link kafkadocker_zookeeper_1:zookeeper -p 9092:9092 dockerkafka/kafka

docker run -it--rm --link kafkadocker_zookeeper_1:zookeeper --link kafkadocker_kafka_1:kafka -p 9000:9000 -e ZK_HOSTS=zookeeper:2181 dockerkafka/kafka-manager