curl --location 'http://localhost:8083/connectors' \
--header 'Content-Type: application/json' \
--data '{
    "name": "elasticsearch-sink-connector",
    "config": {
        "connector.class": "io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
        "tasks.max": "1",
        "topics": "mysql.inventory.user",
        "key.ignore": false,
        "schema.ignore": false,
        "write.method": "UPSERT",
        "connection.url": "http://elasticsearch:9200",
        "read.timeout.ms": "5000",
        "behavior.on.null.values": "DELETE",
        "transforms": "unwrap, key",
        "transforms.unwrap.type": "io.debezium.transforms.ExtractNewRecordState",
        "transforms.unwrap.drop.tombstones": false,
        "transforms.unwrap.delete.handling.mode": "none",
        "transforms.key.type": "org.apache.kafka.connect.transforms.ExtractField$Key",
        "transforms.key.field": "id"
    }
}'
