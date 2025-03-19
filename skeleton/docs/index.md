## Component Basic Information

| Field name       | Example value             |
|:-----------------|:--------------------------|
| **Name**         | ${{ values.name }}        |
| **Description**  | ${{ values.description }} |
| **Domain**       | ${{ values.domain }}      |
| **Parent**       | ${{ values.parentRef }}   |
| ***Identifier*** | ${{ values.identifier }}  |

## Confluent Kafka Output Port details

| Field name                   | Example value                   |
|:-----------------------------|:--------------------------------|
| **Number of partitions**     | ${{ values.numPartitions }}     |
| **Topic replication factor** | ${{ values.replicationFactor }} |

## Data Consumption

Data can be consumed using the Kafka CLI, Kafka Consumer API, Kafka Connect, Kafka Streams, or stream processing frameworks like Spark and Flink.
