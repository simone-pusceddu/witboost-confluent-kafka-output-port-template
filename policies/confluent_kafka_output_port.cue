kind!:                     "outputport"
id!:											 string
description!:              string
name!:                     string
fullyQualifiedName?:       null | string
version!:                  string & =~"^[0-9]+\\.[0-9]+\\..+$"
infrastructureTemplateId!: string
useCaseTemplateId!:        string
dependsOn!: [...string]
platform!:    "Confluent"
technology!:  "Kafka"
outputPortType!: "Events"
tags: [...#OM_Tag]
dataContract:         #DataContract
dataSharingAgreement: #DataSharingAgreement
specific!: #Specific

#OM_Tag: {
	tagFQN!:      string
	description?: string | null
	source!:      string & =~"(?i)^(Classification|Glossary)$"
	labelType!:   string & =~"(?i)^(Manual|Propagated|Automated|Derived)$"
	state!:       string & =~"(?i)^(Suggested|Confirmed)$"
	href?:        string | null
	...
}

#DataContract: {
	SLA: {
		intervalOfChange?: string | null
		timeliness?:       string | null
		upTime?:           string | null
		...
	}
	termsAndConditions?: string | null
	...
}

#DataSharingAgreement: {
	purpose?:         string | null
	billing?:         string | null
	security?:        string | null
	intendedUsage?:   string | null
	limitations?:     string | null
	lifeCycle?:       string | null
	confidentiality?: string | null
	...
}

#Specific: {
	topic!: #Topic
	ownerPermissions: [#Permission, #Permission, #Permission, ...#Permission]
	...
}

#Topic: {
	name!: string
	numPartitions!: int & >0
	replicationFactor!: int & >0
	config!: {[string]: _}
	valueSchema?: #ValueSchema | null
	...
}

#ValueSchema: {
  type!: string & =~"^(JSON|AVRO)$"
  definition!: string
  ...
}

#Permission: {
  resourceType!: string & =~"^(TOPIC|GROUP)$"
  resourceName!: string
  resourcePatternType!: "LITERAL"
  operation!: string & =~"^(READ|WRITE)$"
  permissionType!: "ALLOW"
  ...
}