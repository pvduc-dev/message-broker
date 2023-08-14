curl --location 'http://localhost:8083/connectors' \
--header 'Content-Type: application/json' \
--data '{
    "name": "inventory-connector",
    "config": {
        "connector.class": "io.debezium.connector.mysql.MySqlConnector",
        "tasks.max": "1",
        "database.hostname": "mysql",
        "database.port": "3306",
        "database.user": "root",
        "database.password": "root",
        "database.server.id": "16813",
        "topic.prefix": "mysql",
        "database.include.list": "inventory",
        "database.history.kafka.bootstrap.servers": "kafka0:29092",
        "database.history.kafka.topic": "schema-changes.inventory",
        "schema.history.internal.kafka.bootstrap.servers": "kafka0:29092",
        "schema.history.internal.kafka.topic": "schema-changes.inventory",
        "include.schema.changes": false,
        "transforms": "route",
        "transforms.route.type": "org.apache.kafka.connect.transforms.RegexRouter",
        "transforms.route.regex": "([^.]+)\\.([^.]+)\\.([^.]+)",
        "transforms.route.replacement": "$3"
    }
}'
