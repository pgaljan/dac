
# Diagram as Code

## Example:  MLOps Workflow
<img src="./img/mlops.png" width=500>

<i> note:  some of the sprites are locally loaded

<details>
<summary>Show Code</summary>

```
@startuml
!include <logos/prometheus>
!include <elastic/beats/beats>
!include <elastic/endpoint/endpoint>
!include <logos/git-icon>
!include <logos/kafka-icon>
!include <tupadr3/devicons2/mongodb>
!include <logos/mongodb-icon>
!include <logos/grafana>
!include <logos/apache>
!include <logos/facebook>
!include <logos/postgresql>
sprite mlflow ../img/mlflow.svg
sprite evidentlyai ../img/evidentlyai.png
sprite timescale ../img/timescale.svg
sprite feast ../img/feast_logo.png
sprite spark ../img/spark.png
sprite flink ../img/flink.png
sprite metaverse ../img/meta.png
sprite telegraf ../img/telegraf.png
sprite minio ../img/MINIO_Bird.png

Title MLOps Pipeline
rectangle "Data Ingestion" {
    rectangle filebeat as "<$beats*.25> Filebeat\n<color:gray><size:9>Unstructured, Logs"
    rectangle telegraf as "<$telegraf*.1> Telegraf\n<color:gray><size:9>Metrics"
    rectangle prometheus as "<$prometheus*.4> Prometheus\n<color:gray><size:9>Alerts"
    rectangle gitops as "<$git-icon*.5> GitOps Agent\n<color:gray><size:9>Configuration drift"
    rectangle elasticAgent as "<$endpoint*.25> Elastic Agent\n<color:gray><size:9>Security Events"
    rectangle kafka as "<$kafka-icon*.3> Kafka\n<color:gray><size:9>Message Bus"
}
rectangle "Data Processing" {
    rectangle flink as "<$flink*.2> Flink\n<color:gray><size:9>Streaming Data\n<color:gray><size:9>Processing"
    rectangle spark as "<$spark*.06>\n<color:gray><size:9>Aggregation\n<color:gray><size:9>& Transformation"
    rectangle feast as "<$feast*.015>\n<color:gray><size:9>Feature Store"
    rectangle prophet as "<$metaverse*.03> Prophet\n<color:gray><size:9>Anomaly Detection" 
}
rectangle "Data Storage" {
    rectangle timescaledb as "<$timescale*.015>\n        TimescaleDB\n<color:gray><size:9>      Timeseries Data Store"
    rectangle mongodb as "<$mongodb-icon*.2> MongoDB\n<color:gray><size:9>Unstrucured data store"
    rectangle minio as "<$minio*.015> MinIO\n<color:gray><size:9>Object Store"
    rectangle PostgresSQL as "<$postgresql*.3> PostgreSQL\n<color:gray><size:9>Structured data"
}
rectangle "ML Pipeline" {
    rectangle mlflow as "<$mlflow*.5>\n\n<color:gray><size:9>ML orchestration"
    rectangle trainingpipeline as "Training Pipeline"
    rectangle modelregistry as "Model Registry\n<color:gray><size:9>Model registry"
    rectangle seldoncore as "Seldon Core\n<color:gray><size:9>Advanced serving patterns\n<color:gray><size:9>(canary, shadow)"
    rectangle inferenceapi as "Inference API"
}

    rectangle "Observability Pipeline" {
        rectangle evidentlyai as "<$evidentlyai*.15>\n<color:gray><size:9>Model performance\n<color:gray><size:9>& drift"
        rectangle modelmonitoring as "Model Monitoring"
        rectangle driftdetection as "Drift Detection"
        rectangle retrainingtrigger as "Retraining Trigger"

}
rectangle "Feedback Loop" {
    rectangle grafana as "<$grafana*.35> Grafana\n<color:gray><size:9>Visualization"
    rectangle humandfeedback as "Human Feedback\n<color:gray><size:9>Human training"
    rectangle activelearning as "Active Learning\n<color:gray><size:9>Ambiguous samples"
}

filebeat --> kafka
telegraf --> kafka
prometheus --> kafka
gitops --> kafka
elasticAgent --> kafka

kafka--> flink

flink--> spark
flink --> feast
flink --> prophet 

spark --> timescaledb
spark --> mongodb
feast --> minio
prophet --> minio

minio --> mlflow
mlflow --> trainingpipeline
trainingpipeline --> modelregistry
modelregistry --> seldoncore
seldoncore --> inferenceapi

inferenceapi --> humandfeedback
humandfeedback --> activelearning
activelearning --> trainingpipeline

seldoncore -up-> evidentlyai
evidentlyai--> modelmonitoring
modelmonitoring --> driftdetection
driftdetection --> retrainingtrigger
retrainingtrigger --> trainingpipeline

mongodb --> grafana
timescaledb --> grafana
grafana --> humandfeedback
@enduml



```
</details>

## Example:  Enterprise AI Ecosystem
<img src="./img/ai_workflows.png" width=500>

<details>

<summary>Show Code</summary>

```puml
@startuml
title AI Workflows


json HostedModels {
    "Language":[
        "LLama",
        "GPT-4o"
    ],
    "Audio/Speech":[
        "Whisper",
        "AudioLDM",
        "MusicGen"
    ],
    "Video":[
        "Sora",
        "Lumiere",
        "Gen-2"
    ],
    "Multimodal":[
        "GPT-4V",
        "Opus",
        "Gemini Pro Vision"
    ],
    "3dGen":[
        "Point-E",
        "GET3D",
        "Shap-E"
    ],
    "Code":[
        "CoPilot"
    ]   
}




rectangle "AI Pipeline" {
    queue "feature pipeline" as featurePipe
    queue "training pipeline" as training
    queue "inference pipeline" as inference
}

json Outcomes {
    "Generative":[
        "Code Generation",
        "Chatbot",
        "Assistive Design",
        "Data Creation"
        ],
    "Agentic":[
        "Chat Agent",
        "Digital Assitant"
    ],
    "Autonomous/Assistive":[
        "Computer Vision",
        "Digital Twin",
        "Voice Processing"
    ]
}


json OnPremModels {
    "Language":[
        "LLama",
        "Deepseek"
    ],

    "Code":[
        "CoPilot",
        "Code Llama"
    ],
    "Biochem":[
        "AlphaFold",
        "RoseTTAFold",
        "ESMFold"
    ],
    "Graph":[
        "GraphTransformer",
        "GraphGPS",
        "GIANT"
    ],
    "Time Series":[
        "TFT",
        "N-BEATS",
        "TimeGPT"
    ],
    "Reinforcement":[
        "Muzero",
        "Gato"
    ]    
}
        
        



rectangle "Operational Data" {
    database "sales" as salesdata
    database "supplier" as supplierdata
    database "message" as message
    database "support" as support
    database "ops" as ops
    rectangle "unstructured data" as unstructured
    rectangle "structured data" as structured    
    file "file" as file   
}



unstructured --> featurePipe
structured --> featurePipe
featurePipe -right-> training
training -right-> inference
salesdata --> structured
supplierdata --> structured
message --> unstructured
support --> unstructured
file --> unstructured
ops --> unstructured
ops --> structured

HostedModels --> Outcomes
inference --> OnPremModels
OnPremModels --> Outcomes
Outcomes --> "Operational Data"


@enduml
```
</details>





## Example:  Network Diagram
<img src="./img/nwdial.png" width=600>

<details>

```plantuml
@startuml
!include <office/Devices/router>
!include <office/Devices/cell_phone_iphone_stand_alone>
!include <office/Devices/device_laptop>
!include <office/Devices/workstation_pc>
!include <office/Devices/device_mac_client>
!include <office/Devices/device_tv>
!include <office/Servers/file_server>
!include <office/Servers/on_premises_server>
!include <office/Servers/windows_server>
!include <office/Servers/web_server>

nwdiag {
    network internet {
        router[ description = "<$router*.5>" ,address = "100.56.32.87" ] 
        }

    network internal {
    router [ address = "10.10.100.1" ]
        PC1 [description = "<$device_tv*.5>"]
        PC2 [description = "<$cell_phone_iphone_stand_alone*.5>"]
        PC3 [description = "<$device_laptop*.5>"]
        PC4 [description = "<$workstation_pc*.5>"]
        PC5 [description = "<$device_mac_client*.5>"] 
    }
    network labnetwork  {
        PC2 [address = 10.10.15.15]
        Serv1 [description = "<$file_server*.5>"]
        Serv2 [description = "<$on_premises_server*.5>"]
        Serv3 [description = "<$windows_server*.5>"]
        Serv4 [description = "<$web_server*.5>"]    
    }
}
@enduml
```

</details>

## Component

<img src="https://github.com/user-attachments/assets/c1d26e52-a12b-4d67-a20f-77ef6805516c" width=800>

<details>
  
<summary>Show Code</summary>
  
```puml
@startuml
skinparam componentStyle rectangle

title Component Diagram

node "Microsoft" {
    component "Power Platform"
    component O365
    node VSCode {
        component PlantUML as vscode.PlantUML
        component Mermaid as vscode.Mermaid
    }
}



node "Miro" {
    component PlantUML as miro.PlantUML
    component Mermaid as miro.Mermaid

    () renderer as renderer.PlantUML
    () renderer as renderer.Mermaid
}

cloud cloud 


vscode.PlantUML -> cloud : render
vscode.Mermaid -> cloud : render
miro.PlantUML <-> renderer.PlantUML
miro.Mermaid <-> renderer.Mermaid


@enduml
```

</details>

## Block

```mermaid
block-beta
columns 1

  block:Frontend
    Draw.io
    PlantUML
    Mermaid
  end
  
  block:Renderer
    Custom
    Graphviz
 end

PlantUML --> Graphviz
Mermaid --> Graphviz
Draw.io --> Custom
```

<details>
  
<summary>Show Code</summary>
  
```
block-beta
columns 1

  block:Frontend
    Draw.io
    PlantUML
    Mermaid
  end
  
  block:Renderer
    Custom
    Graphviz
 end

PlantUML --> Graphviz
Mermaid --> Graphviz
Draw.io --> Custom
```

</details>



