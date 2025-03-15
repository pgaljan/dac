```mermaid
flowchart TB
    subgraph Data Ingestion
        A[Filebeat] --> |Logs| C[Kafka]
        B[Telegraf] --> |Metrics| C
        D[Prometheus] --> |Alerts| C
        E[GitOps Agent] --> |Config Changes| C
        F[Elastic Agent] --> |Security Events| C
    end
    
    subgraph Data Processing
        C --> G[Apache Flink]
        G --> H[Feature Store - Feast]
        G --> I[Anomaly Detection - Prophet]
        G --> J["Real-time Processing\n(Spark Streaming)"]
    end
    
    subgraph Data Storage
        H --> K[MinIO]
        I --> K
        J --> L[TimescaleDB]
        J --> M[MongoDB]
    end
    
    subgraph ML Pipeline
        K --> N[MLflow]
        N --> O[Training Pipeline]
        O --> P[Model Registry]
        P --> Q[Seldon Core]
        Q --> R[Inference API]
    end
    
    subgraph Feedback Loop
        R --> S[Human Feedback]
        S --> T[Active Learning]
        T --> O
    end
    
    subgraph Observability
        L --> U[Grafana]
        M --> U
        Q --> V[Evidently AI]
        V --> W[Model Monitoring]
        W --> X[Drift Detection]
        X --> Y[Retraining Trigger]
        Y --> O
    end
    ```