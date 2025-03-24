```mermaid
%%{init: {"flowchart": {"defaultRenderer": "elk"}} }%%

graph TB
    subgraph ingest [Data Ingestion]
        Filebeat(" `Bold **edge label**` ")
        Telegraf
        Prometheus
        GitOpsAgent[GitOps Agent] 
        ElastiAgent[Elastic Agent]
        Kafka
    end
    
    subgraph processing [Data Processing]
        Flink
        Feast
        Prophet
        Spark
    end
    
    subgraph storage [Data Storage]
        MinIO
        TimescaleDB
        MongoDB
    end
    
    subgraph mlpipe [ML Pipeline]
        MLflow
        trainingPipeline[Training Pipeline]
        modelRegistry[Model Registry]
        seldonCore[Seldon Core]
        inferenceAPI[Inference API]
    end
    
    subgraph feedback[Feedback Loop]
        humanFeedback[Human Feedback]
        activeLearning[Active Learning]
        grafana[Grafana]
    end
    
    subgraph Observability
        evidentlyAI[Evidently AI]
        modelMonitoring[Model Monitoring]
        driftDetection[Drift Detection]
        retrainTrigger[Retraining Trigger]


    end

        Filebeat --> |Logs| Kafka
        Telegraf --> |Metrics| Kafka
        Prometheus --> |Alerts| Kafka
        GitOpsAgent --> |Config Changes| Kafka
        ElastiAgent --> |Security Events| Kafka
   
           Kafka --> Flink
        Flink --> Feast
        Flink --> Prophet
        Flink --> Spark

   
        Feast --> MinIO[MinIO]
        Prophet --> MinIO
        Spark --> TimescaleDB
        Spark --> MongoDB

        
        MinIO --> MLflow
        MLflow --> trainingPipeline
        trainingPipeline --> modelRegistry
        modelRegistry --> seldonCore
        seldonCore --> inferenceAPI

        inferenceAPI --> humanFeedback
        humanFeedback --> activeLearning
        activeLearning --> trainingPipeline

        
        TimescaleDB --> grafana
        MongoDB --> grafana
        seldonCore --> evidentlyAI
        evidentlyAI --> modelMonitoring
        modelMonitoring --> driftDetection
        driftDetection --> retrainTrigger
        retrainTrigger --> trainingPipeline
        grafana --> humanFeedback
    ```