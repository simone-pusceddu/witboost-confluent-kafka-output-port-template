## Using the template

### Prerequisites

A System should already exist in order to attach the new components to it.

### Component Basic Information

This section includes the basic information that any component of Witboost must have.

- Name: Required name used for display purposes on your System.
- Description: A short description to help others understand what this Output Port is for.
- Domain: The Domain of the System this Output Port belongs to. Be sure to choose it correctly as is a fundamental part of the Output Port and cannot be changed afterward.
- Parent: The System this Output Port belongs to, be sure to choose the right one.
- Identifier: Unique ID for this new entity inside the domain. Don't worry to fill this field, it will be automatically filled for you.
- Depends On: If you want your Output Port to depend on other components from the System, you can choose this option.

*Example:*

| Field name       | Example value                                                                   |
|:-----------------|:--------------------------------------------------------------------------------|
| **Name**         | Confluent Kafka Output Port                                                     |
| **Description**  | Output Port that exposes information of this System to users and other systems  |
| **Domain**       | domain:finance                                                                  |
| **Parent**       | system:finance.cashflow.0                                                       |
| ***Identifier*** | Will look something like this: *finance.cashflow.0.confluent-kafka-output-port* |

### Provide some additional information

This section includes additional information about the component, including fields that will be included in the output port data contract.

- Interval of change: How often changes in the data are reflected
- Timeliness: The skew between the time that a business fact occurs and when it becomes visible in the data
- Uptime: The percentage of port availability
- Terms and conditions: If the data is usable only in specific environments

| Field name               | Example value |
|:-------------------------|:--------------|
| **Interval of change**   | example       |
| **Timeliness**           | example       |
| **Uptime**               | example       |
| **Terms and conditions** | example       |

### Data sharing agreements information

This section includes information about the data sharing agreement field included in the Output Port, defining the expected way to utilize the information provided by this Output Port in terms of billing, security, intended usage, etc.

- Purpose: What is the goal of this data set
- Billing: How a consumer will be charged back when it consumes this output port
- Security: Additional information related to security aspects, like restrictions, maskings, sensible information and privacy
- IntendedUsage: Any other information needed by the consumer in order to effectively consume the data, it could be related to technical stuff (e.g. extract no more than one year of data for good performances ) or to business domains (e.g. this data is only useful in the marketing domains)
- Limitations: If any limitation is present it must be made super clear to the consumers
- LifeCycle: Describe how the data will be historicized and how and when it will be deleted
- Confidentiality: Describe what a consumer should do to keep the information confidential, how to process and store it. Permission to share or report it

| Field name          | Example value |
|:--------------------|:--------------|
| **Purpose**         | example       |
| **Billing**         | example       |
| **Security**        | example       |
| **Intended Usage**  | example       |
| **Limitations**     | example       |
| **Lifecycle**       | example       |
| **Confidentiality** | example       |

### Provide Output port deployment information

This section includes information about the location of the deployed data used by the Output Port to access and expose it.

- Number of partitions: The number of Kafka partitions.
- Topic replication factor: Kafka replicates the event log for each topic’s partitions across a configurable number of servers. This replication factor is configured at the topic level, and the unit of replication is the topic partition. This enables automatic failover to these replicas when a server in the cluster fails so messages remain available.

| Field name                   | Example value |
|:-----------------------------|:--------------|
| **Number of partitions**     | 3             |
| **Topic replication factor** | 1             |
