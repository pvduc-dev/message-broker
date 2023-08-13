curl --location --request PUT 'localhost:9200/users' \
--header 'Content-Type: application/json' \
--data '{
    "settings": {
        "number_of_shards": 1
    },
    "mappings": {
        "properties": {
            "id": {
                "type": "integer"
            },
            "email": {
                "type": "text",
                "fields": {
                    "keyword": {
                        "type": "keyword",
                        "ignore_above": 256
                    }
                }
            }
        }
    }
}'
