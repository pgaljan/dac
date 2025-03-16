PlantUML and Mermaid snippet repository for rapid diagramming and data modeling, and UX iteration


* [Diagram as Code](#diagram-as-code)
* [UI Spec as Code](#UI-Spec)
* [Data Model Illustration](#data-model-illustration)
* [Simple Sprite Library](#simple-sprite-library)
  
# Diagram as Code

## Example:  MLOps Workflow
<img src="./img/mlops.png" width=500>

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

Title MLOps Pipeline
rectangle "Data Ingestion" {
    rectangle filebeat as "<$beats*.25> Filebeat\n<color:gray><size:9>Unstructured, Logs"
    rectangle telegraf as "Telegraf\n<color:gray><size:9>Metrics"
    rectangle prometheus as "<$prometheus*.4> Prometheus\n<color:gray><size:9>Alerts"
    rectangle gitops as "<$git-icon*.5> GitOps Agent\n<color:gray><size:9>Configuration drift"
    rectangle elasticAgent as "<$endpoint*.25> Elastic Agent\n<color:gray><size:9>Security Events"
    rectangle kafka as "<$kafka-icon*.3> Kafka\n<color:gray><size:9>Message Bus"
}
rectangle "Data Processing" {
    rectangle flink as "<$apache*.3> Flink\n<color:gray><size:9>Streaming Data Processing"
    rectangle spark as "<$apache*.3> Spark\n<color:gray><size:9>Aggregation & Transformation"
    rectangle feast as "Feast\n<color:gray><size:9>Feature Store"
    rectangle prophet as "<$facebook*.3> Prophet\n<color:gray><size:9>Anomaly Detection" 
}
rectangle "Data Storage" {
    rectangle timescaledb as "TimescaleDB\n<color:gray><size:9>Timeseries Data Store"
    rectangle mongodb as "<$mongodb-icon*.2> MongoDB\n<color:gray><size:9>Unstrucured data store"
    rectangle minio as "MinIO\n<color:gray><size:9>Object Store"
    rectangle PostgresSQL as "MinIO\n<color:gray><size:9>Structured data"
}
rectangle "ML Pipeline" {
    rectangle mlflow as "MLFlow\n<color:gray><size:9>ML orchestration"
    rectangle trainingpipeline as "Training Pipeline"
    rectangle modelregistry as "Model Registry\n<color:gray><size:9>Model registry"
    rectangle seldoncore as "Seldon Core\n<color:gray><size:9>Advanced serving patterns\n<color:gray><size:9>(canary, shadow)"
    rectangle inferenceapi as "Inference API"
}
rectangle "Observability" {
    rectangle grafana as "<$grafana*.35> Grafana\n<color:gray><size:9>Visualization"
    rectangle evidentlyai as "Evidently AI\n<color:gray><size:9>Model performance\n<color:gray><size:9>& drift"
    queue pipeline {
    rectangle modelmonitoring as "Model Monitoring"
    rectangle driftdetection as "Drift Detection"
    rectangle retrainingtrigger as "Retraining Trigger"
}
}
rectangle "Feedback Loop" {
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

seldoncore --> evidentlyai
evidentlyai--> modelmonitoring
modelmonitoring --> driftdetection
driftdetection --> retrainingtrigger
driftdetection--> trainingpipeline

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


# UI Spec

## Web UI Spec Template
<img src="./img/webui_spec.png" width=800>

<details>

  <summary>Show Code</summary>

```plantuml
@startsalt
skinparam backgroundcolor #FEFFFF


{
{+
{ 
{
' Tabs
    {/  <b>Active  | <color:gray> Inactive  }                                                                         🗕 <&browser>  🗙}

' Browser bar
    {. 🡐 ⟳ ⌂ |{+  <&lock-locked>  https://url.anydomain.com                             }}
--

' Banner
    {*<back:08206E><color:white>  Banner                                                                                          ⚙ 🛈 🤵}
{

 
' LeftNav
{
    <b>LeftNav
    {T 
        + LandingPage
        + <b>ActivePage
        + Administration
        ++ Submenu


    }
}|

' MainPanelHeader
{
    <b><back:08206E><color:white>ActivePage
    <i><color:08206E>informational text
' MainPanel
{
        {[Action]|.|^Menu^|      🝖 ▥ ⟳}
    {T-
        .|☐ | S | F |Label⏶|<b>Column 
        <b><color:red>⌦ |☐| | <color:darkgreen>⚑ | ♺ |Label | Attribute 
        <b><color:red>⌦ |☐| ⚐ | <color:darkorange>☢ |Label🏷️|  Attribute
        <b><color:red>⌦ |☐| <color:red>⚑ | S |Label | Attribute 
        <b><color:red>⌦ |☐| <color:darkred>🛇 | S |Label | Attribute 
        <b><color:red>⌦ |☐| ⚐ | S |Label| Attribute 
 
    }

}| |
{^"<b>Filter "
{
      { { <b>Saved Filters : 
     ^       ^^ Filter1<color:darkgreen>⚑ ^^ Filter2<color:red>⚑^^<i><color:gray> Filter3</i>^
}|
{
{           { Label: |     |{+       } }
           { Attribute: |  |{+       } }
           {N: | ( ) True | (X) False}
           { Tag:        |{+^  Key   ^ |^ Value^}} }}

           }}}}}}
           
           }
'Footer
{
     {(X) Good  | () Better  | () Best}
     {[X] SaaS  | [X] On-Prem  | [X] Disconnected}

     --
    {
        <b>         Administrator  | [X] View | [X] Edit 
        <b>                              Author | [X] View | [ ] Edit
        <b>                    Contributor | [X] View | [ ] Edit
        <b>                    Commenter | [X] View | [ ] Edit
        <b>               Viewer | [X] View | [ ] Edit
    }

    }

}

@endsalt

```
</details>


## Mobile UI Spec Template
<img src="./img/mobileUI.png" width=400>

<details>

  <summary>Show Code</summary>

```plantuml

@startsalt
skinparam rectangle rounded
{+
' Device Status
    {1:48  <&bell>                           <&wifi> <&battery-full>}
--
'Dashboard
{
               <&cloudy*3>
          <&location>Anytown, USA
               <size:20>49°
           Feels like: 43°
            H: 52° L: 38°
}
--
'Summary
{
<size:9>Cloudy conditions will contiooue for the rest of the day.
<size:9>Wind gusts up to 17mph are making the temperature 
<size:9>feel like like 43.
    
    
    {
              | 6p | 7p | 8p | 9p | 10p
              |<&cloudy>| <&bolt*1.5> | <&cloudy>| <&sun>| <&cloudy>
               | 50° | 51° | 52° | 50° | 48°     
     }

}
--
'Detail
<b>Details
{T-
    <&chevron-right*2> | <&location>Details | <i>Details| .| .|.|.| .|.|.
    <&chevron-right*2> | <&location>Details | <i>Details
    <&chevron-right*2> | <&location>Details| <i>Details
    <&chevron-right*2> | <&location>Details| <i>Details
    <&chevron-right*2> | <&location>Details| <i>Details
} 

{

}
--
{
     <&home*4>                        <&share*4>
}
}


@endsa

```
</details>


## Components 
  
<details>

  

  <summary>Show Components</summary>

### Useful Unicode

<img src="./img/unicode-icons.png" width=400>
<details>
  
<summary>Show Code</summary>

```puml
@startsalt
 
' Unicode characters don't scale but they 
' render more reliably and result in more 
' readable markup than sprites and 
' openiconic
' https://www.vertex42.com/ExcelTips/unicode-symbols.html

{+Unicode icons
  {
{
    🗀  ⚙
  ▁  🗔   🗙
  𝄘 ≡ ☰
  🗕  ⤓  ⤒  🔗  
  🝖 ▥ 
  	↩ ↪ ↶  ↷
  🡐 ⟳ ⌂ ⟰
  🛇 🛈  © ®
  ⏴ ⏵  ⏶  ⏷
   ⌨ ⌧ ⌦ ⏱
  ⏭   ⏮    ⏯
  ▣ ◼ ☑ ▢ 
  ⦿  🔘☢ ◉
  ✂ ⎘  🛆
  }|
{
{    
  ← ↑ → ↓ 
  ↔ ↕ 
  ⇤ ⇥ ⤒ ⤓
  ↖ ↗ ↘ ↙ 
  ⤸ ⤹ ⤺ ⤻
  ⤴ ⤵ ⤶ ⤷	
☰ ☱ ☲ ☳	
☴ ☵ ☶ ☷
♺ ♻ ♼
⚐ ⚑

𝄘 𝄙 𝄚 𝄛
}|
{

🕐 🕑 🕒       🕓 
🕔 🕕 🕖       🕗
🕘 🕙 🕚       🕛 
🕜 🕝 🕞       🕟
🕠 🕡 🕢       🕣
🕤 🕥 🕦       🕧
① ② ③ ④ 
  ⑤ ⑥ ⑦ ⑧ 
  ⑨ ⑩ ⑪ ⑫ 
  ⑬ ⑭ ⑮ ⑯ 
  ⑰ ⑱ ⑲ ⑳
  }
}
  }|
  {
  ❗❕  ❔  ❓  ⭐        ⭕
  🔁 🔃  📶   🔀  🔂     🔄
  🆕   ℹ️   ⚠️  ❌  ⛔ 💡
  🔓    🔒   🔑
    ⛔    ✅  ✨    ❎ ⭐
  ➕     ➖ 🟰
   🔔      🔕 ⌛

  ⌚    ⌛    🚩  🚫  🚀
  ⏩   ⏪   ⏫     ⏬
  🔎   🔍     🍳  📍    📌
  
  }|

}
@endsalt
```

 </details> 

### Manual box-drawing

<img src="./img/box-draw.png" width=400>
<details>
  
<summary>Show Code</summary>

```puml
@startsalt

{+Unicode box drawing                                                                                                                           
    ─	━	│	┃	┄	┅	┆	┇	┈	┉	┊	┋ 
┌	┍	┎	┏	┐	┑	┒	┓	└	┕	┖	┗
┘	┙	┚	┛	├	┝	┞	┟	┠	┡	┢	┣
┤	┥	┦	┧	┨	┩	┪	┫	┬	┭	┮
	┯
┰	┱	┲	┳	┴	┵	┶	┷	┸	┹	┺	┻
┼	┽	┾	┿	╀	╁	╂	╃	╄	╅	╆	╇
╈	╉	╊	╋	╌	╍	╎	╏	═	║	╒	╓
╔	╕	╖	╗	╘	╙	╚	╛	╜	╝	╞	╟
╠	╡	╢	╣	╤	╥	╦	╧	╨
	╩	╪	╫ ╬	╭	╮	╯	╰	╱	╲
	╳	╴	╵	╶	╷ ╸	╹	╺	╻	╼	╽	╾╿
  
}
@endsalt
```

 </details> 


  ### Window
<img src="https://github.com/user-attachments/assets/6f039b34-918f-437e-a152-2078656e23ff" width=200>
<details>
  
<summary>Show Code</summary>
  
```puml
@startsalt
skinparam backgroundcolor #FEFFFF
{ 
    {+


{*  Window Title                                                                                        🗔  X}
' Header
    { 
{}
    {+ 🔒  https://host.subdomain.domain.com   }
  
' LeftNav
{}
    {T 
        + Item
        + Item
        ++ Item
        ++ Item
        ++ Item
        + Item
        + Item
        ++ Item
        ++ Item
        ++ Item
        + Item
        ++ Item
        ++ Item
        ++ Item
        ++ Item
        ++ Item
        ++ Item
        ++ Item
        ++ Item
        ++ Item

    }|
' MainPanel


' endMainPanel

    }

}
<b>RBAC:</b> Groups
<b>Good/Better/Best</b>: Level
}


@endsalt
```

</details>

### Wizard
<img src="https://github.com/user-attachments/assets/1c1200e0-7ef2-4a0e-8206-f62e1f35948e" width=200>

<details>
  
<summary>Show Code</summary>
  
```puml
@startsalt
skinparam backgroundcolor #FEFFFF

{
{*  Wizard}
{+
'Left Menu
{/
    Step 1    
    <b>Step 2    
    <color:gray>Step 3    
}|
{
    { 
      <b>Step Name
            {.}

        {
          Attribute:  | "User-defined value  " 
          <i>Note |          {<i>Lorem ipsum 
        <i>Lorem iupsum}
        {.}
        Textbox  |
        {SI
    something for the user to type into
    
                                           
}
        {.}
        () Bullet| 
        (X) Bullet
        [ ] check|
        [X] Check
          
{.}
        {
        }
        } 
        

    }
    --
{                                                 |[Back] | [Next]|}
}
}
}
@endsalt
```

</details>

### Modal
<img src="https://github.com/user-attachments/assets/bca6d2d7-5fd2-4eb8-93ff-c79184c887e8" width=200>


<details>
  
<summary>Show Code</summary>
  
```puml
@startsalt
skinparam backgroundcolor #FEFFFF

{
{*  Modal}
{+

{
    { 
      <b>Step Name
            {.}

        {
          Attribute:  | "User-defined value  " 
          <i>Note |          {<i>Lorem ipsum 
        <i>Lorem iupsum}
        {.}
        Textbox  |
        {SI
    something for the user to type into
    
                                           
}
        {.}
        () Bullet| 
        (X) Bullet
        [ ] check|
        [X] Check
          
{.}
        {
        }
        } 
        

    }
    --
{                                                 |[Back] | [Next]|}
}
}
}
@endsalt
```

</details>



### Hierarchical Table
<img src="https://github.com/user-attachments/assets/bca6d2d7-5fd2-4eb8-93ff-c79184c887e8" width=200>

<details>
  
<summary>Show Code</summary>
  
```puml
@startsalt
{<b> Table Name
    {
        {
        {[Action]|  |
        ^ Menu ^|
        ^ Menu ^^ Option 1 ^^ Option 2 ^}
    }
      
    {                             🝖 ▥ ⟳  }
    
    {T-
        ☐ <b>Column|<b>Column |<b>Column |<b> Column | <b>Column
        ☐ 1Level|  ✅ |  Attribute       |Attribute | Attribute Attribute
        ++ ☐ 2Level|  ✅ |  Attribute       |Attribute| Attribute Attribute
        ++ ☐ 2Level|  ⚠️ | Attribute      |Attribute| Attribute Attribute
        +++ ☐ 3Level|❌| Attribute      |Attribute| Attribute Attribute
        ☑ 1Level|  ✅ |  Attribute       |Attribute | Attribute Attribute
        ☐ 1Level|  ✅ |  Attribute       |Attribute | Attribute Attribute
        ++ ☑ 2Level|  ✅ |  Attribute       |Attribute| Attribute Attribute
        ++ ☑ 2Level|  ⚠️ | Attribute      |Attribute| Attribute Attribute
        +++ ☑ 3Level|❌| Attribute      |Attribute| Attribute Attribute
        ☐ 1Level|  ✅ |  Attribute       |Attribute | Attribute Attribute
        ++ ☐ 2Level|  ✅ |  Attribute       |Attribute| Attribute Attribute
        ++ ☐ 2Level|  ✅ | Attribute      |Attribute| Attribute Attribute
        +++ ☐ 3Level|✅| Attribute      |Attribute| Attribute Attribute
}
{.}
}
}
@endsalt
```

</details>

### Flat Table
<img src="https://github.com/user-attachments/assets/b342f98b-51ea-4dc3-af22-0116eb869a6d" width=200>


<details>
  
<summary>Show Code</summary>
  
```puml
@startsalt
{
    <b> Table Name
                                      🝖 ▥ ⟳
    {T-
        ☐ <b>Column|<b>Column |<b>Column |<b> Column | <b>Column
        ☐ 1Level|  ✅ |  Attribute       |Attribute | Attribute Attribute
         ☐ 2Level|  ✅ |  Attribute       |Attribute| Attribute Attribute
         ☐ 2Level|  ⚠️ | Attribute      |Attribute| Attribute Attribute
         ☐ 3Level|❌| Attribute      |Attribute| Attribute Attribute
        ☑ 1Level|  ✅ |  Attribute       |Attribute | Attribute Attribute
        ☐ 1Level|  ✅ |  Attribute       |Attribute | Attribute Attribute
         ☑ 2Level|  ✅ |  Attribute       |Attribute| Attribute Attribute
         ☑ 2Level|  ⚠️ | Attribute      |Attribute| Attribute Attribute
         ☑ 3Level|❌| Attribute      |Attribute| Attribute Attribute
        ☐ 1Level|  ✅ |  Attribute       |Attribute | Attribute Attribute
         ☐ 2Level|  ✅ |  Attribute       |Attribute| Attribute Attribute
         ☐ 2Level|  ✅ | Attribute      |Attribute| Attribute Attribute
         ☐ 3Level|✅| Attribute      |Attribute| Attribute Attribute
}
}
@endsalt
```

</details>

### Tabbed Interface
<img src="https://github.com/user-attachments/assets/7cdf7d83-9e89-4144-8dbd-eb813bb0557b" width=200>

<details>
  
<summary>Show Code</summary>
  
```puml
@startsalt
{{
  {/ Tab  | Tab | Tab | <b>Selected Tab }

{.}
Message to the user
--
{
          Attribute:  | "User-defined value  " 
          <i>Note |          {<i>Lorem ipsum 
        <i>Lorem iupsum}
        {.}
        Textbox  |
        {SI
    something for the user to type into
    
                                           
}
        {.}
        () Bullet| 
        (X) Bullet
        [ ] check|
        [X] Check
        
          
{.}
        {
        }
        } 
        
    }
    
{                                    |[Cancel]| [Action]}}

@endsalt
```

</details>

### Unicode
<img src="https://github.com/user-attachments/assets/f54f5f5c-fbe0-4bcb-8ddc-ad1c7dae7cff" width=200>


<details>

```puml
@startsalt
{+Unicode
  {🗀
  🗔
  𝄘
  🝖 ▥ ⟳
  ©
  ®
  ⏴
  ⏵
  ⏶
  ⏷
  ⛔
  ✅
  ✨
  ❌
  ❎
  {➕  |
  ➖}
  }|
{ ❗
  ❕
  ❔
  ❓
  ⭐
  ⭕
  {🔁 🔃  📶  🔀  🔂  🔄   }
  {🔓 |
  🔒 |
  🔑}
  {🔔 |
  🔕}
  }
}
@endsalt
```
  
</details>

### Dashboard Layout
<img src="https://github.com/user-attachments/assets/d74c4c3d-d825-4cd6-87c9-ddedfcfea729" width=200>

<details>
  
<summary>Show Code</summary>
  
```puml
@startsalt
{
{^==bubble

  <img:https://raw.githubusercontent.com/pgaljan/dac/main/img/bubble.png>
 
 
 
 
 
{}
}|
    {^==map
                                                                  
  <img:https://raw.githubusercontent.com/pgaljan/dac/main/img/map.png>

 { }
}


{^==scatter
 
  <img:https://raw.githubusercontent.com/pgaljan/dac/main/img/scatter.png>
  }|
  {^==veritcal bar
 
 <img:https://raw.githubusercontent.com/pgaljan/dac/main/img/vbar.png>
 }
{^==horizontal bar
 
 <img:https://raw.githubusercontent.com/pgaljan/dac/main/img/hbar.png>
}|
  {^==line
 
 <img:https://raw.githubusercontent.com/pgaljan/dac/main/img/line.png>
}
  {^==graph
 
 <img:https://raw.githubusercontent.com/pgaljan/dac/main/img/graph.png>
}

}

@endsalt

```

</details>

</details>

# Simple Sprite Library


## Device Sprites
<img src="./img/devices.png" width=800>
<details>

<summary>Show Code</summary>
  
```puml

@startuml
skinparam backgroundcolor #FEFFFF

sprite storage-array <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M0 7.2v17.6h32v-17.6zM29.86 22.66h-27.72v-13.32h27.72zM13.64 11.020h4.6v2.12h-4.6zM13.64 14.9h4.6v2.12h-4.6zM13.64 18.86h4.6v2.12h-4.6zM22 11.020h4.6v2.12h-4.6zM22 14.9h4.6v2.12h-4.6zM22 18.86h4.6v2.12h-4.6zM5.24 11.020h4.6v2.12h-4.6zM5.24 14.9h4.6v2.12h-4.6zM5.24 18.86h4.6v2.12h-4.6z"></path>
   </svg>   
sprite server <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M0 11.040v10h32v-10zM29.86 18.82h-27.72v-5.64h27.72zM5.34 14.94h21.32v2.12h-21.32z"></path>
   </svg>

sprite modular <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M0 20.96h32v-10h-32zM2.14 13.18h27.72v5.64h-27.72zM0 0v10h32v-10zM29.86 7.78h-27.72v-5.64h27.72zM0 32h32v-10h-32zM2.14 24.22h27.72v5.64h-27.72zM5.34 14.94h21.32v2.12h-21.32zM5.34 26h5.34v2.12h-5.34z"></path>
   </svg>   
   
sprite node <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M0 11.040v10h32v-10zM29.86 18.82h-27.72v-5.64h27.72zM7.16 17.38c0.762 0 1.38-0.618 1.38-1.38s-0.618-1.38-1.38-1.38c-0.762 0-1.38 0.618-1.38 1.38v0c0 0.762 0.618 1.38 1.38 1.38v0z"></path>
</svg>

sprite rack <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M16.42 0l-11.2 6.62v25.38h21.58v-28.7zM16.42 29.88h-9.1v-22l9.22-5.5v27.5zM23.84 29.88v0l-4.16-1.6v-2.62l4.24 1.68v2.54zM23.84 24.3l-4.24-1.64v-2.66l4.24 1.68v2.56zM23.84 18.66l-4.18-1.62v-2.62l4.34 1.68v2.56zM23.84 13.040l-4.18-1.62v-2.62l4.34 1.68v2.56zM23.84 7.42l-4.18-1.62v-2.62l4.34 1.68v2.56z"></path>
   </svg> 
sprite datacenter <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M28.94 4.56v-4.56h-25.88v4.56h-2.5v27.44h30.88v-27.44zM5.44 2.36h21.12v2.18h-21.12zM18.44 29.64h-4.88v-6.94h4.88zM29.060 29.64h-8.26v-9.3h-9.6v9.3h-8.26v-22.72h26.12zM8.22 9.84h2.36v2.36h-2.36zM14.84 9.84h2.36v2.36h-2.36zM21.44 9.84h2.36v2.36h-2.36zM8.22 15.22h2.36v2.38h-2.36zM14.84 15.22h2.36v2.38h-2.36zM21.44 15.22h2.36v2.38h-2.36z"></path>
 
   </svg> 
sprite switch-blade-2u <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M0 2.5v12h32v-12zM29.56 12h-27.12v-7.060h27.12zM20.92 7.28h6.34v2.44h-6.34zM0 29.5h32v-12h-32zM2.44 20h27.12v7.16h-27.12zM20.92 22.26h6.34v2.44h-6.34z"></path>
   </svg>
sprite switch-blade <svg width="32" height="32" viewBox="0 0 32 32">
     <path d="M0 10v12h32v-12zM29.56 19.6h-27.12v-7.18h27.12zM20.92 14.78h6.34v2.44h-6.34z"></path>
   </svg>
sprite tablet-vert <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M4 0v32h24v-32zM26 2.14v19.020h-19.88v-19.020zM6.12 29.86v-6.58h19.76v6.58zM17.48 26.52c0 0.817-0.663 1.48-1.48 1.48s-1.48-0.663-1.48-1.48c0-0.817 0.663-1.48 1.48-1.48v0c0.817 0 1.48 0.663 1.48 1.48v0z"></path>
   </svg>   
sprite tablet-horiz <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M0 4v24h32v-24zM29.86 6.12v12.88h-27.72v-12.88zM2.14 25.88v-4.76h27.72v4.76zM17.060 23.46c0 0.585-0.475 1.060-1.060 1.060s-1.060-0.475-1.060-1.060c0-0.585 0.475-1.060 1.060-1.060v0c0.585 0 1.060 0.475 1.060 1.060v0z"></path>
   </svg>   
sprite thin-client <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M21.34 0h-10.68v25.78h10.68zM19.2 23.64h-6.4v-21.5h6.42v21.5zM17.080 6.82c0.003 0.030 0.005 0.065 0.005 0.1 0 0.596-0.484 1.080-1.080 1.080-0.002 0-0.003 0-0.005 0h0c-0.619 0-1.12-0.501-1.12-1.12s0.501-1.12 1.12-1.12v0c0 0 0 0 0 0 0.589 0 1.069 0.472 1.080 1.059l0 0.001zM14.94 11.38h2.14v8.62h-2.14zM7.76 28v4h2.24v-2h12.2v2h2.14v-4z"></path>
   </svg> 
sprite server-tower <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M7.6 0v32h16.8v-32zM22.28 29.86h-12.56v-27.72h12.56zM11.4 4.2h9.2v2.12h-9.2z"></path>
   </svg>
sprite desktop <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M32 26v-14h-20v14h7v4h-3v2h12v-2h-3v-4zM23 30h-2v-4h2zM14 24v-10h16v10zM8.4 23.8c0 0.773-0.627 1.4-1.4 1.4s-1.4-0.627-1.4-1.4c0-0.773 0.627-1.4 1.4-1.4v0c0.773 0 1.4 0.627 1.4 1.4v0zM4 6h6v2h-6zM12 30h-10v-28h10v8h2v-10h-14v32h14v-4h-2zM4 10h6v2h-6z"></path>
   </svg>   
sprite mobile <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M6.92 0v32h18.16v-32zM22.92 2.14v2h-13.86v-2zM22.92 6.26v16h-13.86v-16zM9.060 29.86v-5.48h13.88v5.48zM17.4 27.080c0 0.773-0.627 1.4-1.4 1.4s-1.4-0.627-1.4-1.4c0-0.773 0.627-1.4 1.4-1.4v0c0.773 0 1.4 0.627 1.4 1.4v0z"></path>
   </svg>

rectangle infrastructure {
card "<$datacenter> datacenter"
card "<$rack> rack"
card "<$modular> modular"
}

rectangle compute {
card "<$server> server"
card "<$storage-array> storage-array"
card "<$node> node"
}

rectangle network {
card "<$switch-blade> switch-blade"
card "<$switch-blade-2u> switch-blade-2u"
}
rectangle edge {
   card "<$thin-client> thin-client"
   card "<$desktop> desktop"
   card "<$mobile> mobile"
   card "<$tablet-vert> tablet-vert"
   card "<$tablet-horiz> tablet-horiz"
   card "<$mobile> mobile"
   }
@enduml

```
</details>

## Architecture Sprites
<img src="./img/arch.png" width=800>

<details>

<summary>Show Code</summary>
  
```puml
@startuml
skinparam backgroundcolor #FEFFFF
   
sprite datastore <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M16 0c-7.28 0-13 3.020-13 6.9 0 0.18 0 18.4 0 18.58 0.36 3.72 5.94 6.52 13 6.52s12.58-2.78 12.98-6.46c0-0.22 0-18.46 0-18.64 0.020-3.88-5.7-6.9-12.98-6.9zM16 2.14c6.4 0 10.86 2.5 10.86 4.76s-4.46 4.76-10.86 4.76-10.86-2.52-10.86-4.76 4.46-4.76 10.86-4.76zM16 29.86c-6.24 0-10.64-2.36-10.86-4.52v-14.62c2.811 1.94 6.291 3.099 10.042 3.099 0.288 0 0.574-0.007 0.858-0.020l-0.040 0.002c0.244 0.012 0.53 0.019 0.818 0.019 3.751 0 7.231-1.159 10.102-3.138l-0.060 0.039v14.58c-0.24 2.2-4.66 4.56-10.86 4.56z"></path>
   </svg> 
sprite wifi <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M31.24 10.98c-3.899-3.903-9.287-6.318-15.24-6.318s-11.341 2.415-15.24 6.318l-0 0-0.76 0.74 1.52 1.52 0.76-0.76c3.513-3.507 8.363-5.676 13.72-5.676s10.207 2.169 13.72 5.676l0.76 0.76 1.52-1.52zM16 9.8c-0.016-0-0.034-0-0.053-0-4.445 0-8.467 1.813-11.366 4.739l-0.001 0.001-0.76 0.76 1.5 1.52 0.68-0.82c2.543-2.594 6.084-4.202 10-4.202s7.457 1.608 9.998 4.2l0.002 0.002 0.76 0.76 1.5-1.52-0.74-0.76c-2.916-2.893-6.932-4.681-11.366-4.681-0.054 0-0.108 0-0.162 0.001l0.008-0zM16 15.54c-0.002 0-0.004 0-0.006 0-2.693 0-5.131 1.093-6.894 2.86l-0.74 0.74 1.5 1.52 0.76-0.66c1.395-1.337 3.291-2.16 5.38-2.16s3.985 0.823 5.383 2.163l-0.003-0.003 0.76 0.76 1.5-1.52-0.74-0.74c-1.751-1.805-4.191-2.933-6.895-2.96l-0.005-0zM16 20.66c-1.845 0-3.34 1.495-3.34 3.34s1.495 3.34 3.34 3.34c1.845 0 3.34-1.495 3.34-3.34v0c0-1.845-1.495-3.34-3.34-3.34v0zM16 25.2c-0.663 0-1.2-0.537-1.2-1.2s0.537-1.2 1.2-1.2c0.663 0 1.2 0.537 1.2 1.2v0c0 0.663-0.537 1.2-1.2 1.2v0z"></path>
   </svg> 
sprite cloud-wireless <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M26.7 13c0-5.16-3.16-9.1-8-9.1-0.070-0.002-0.151-0.004-0.233-0.004-2.728 0-5.118 1.445-6.448 3.611l-0.019 0.033c-0.221-0.013-0.48-0.020-0.74-0.020s-0.519 0.007-0.776 0.022l0.036-0.002c-0.203-0.025-0.438-0.040-0.676-0.040-2.731 0-5.016 1.907-5.597 4.461l-0.007 0.038c-2.475 0.777-4.24 3.050-4.24 5.736 0 0.008 0 0.017 0 0.025v-0.001c-0.002 0.055-0.003 0.119-0.003 0.183 0 3.093 2.507 5.6 5.6 5.6 0.064 0 0.128-0.001 0.192-0.003l-0.009 0h1.72l-2.16-2.18c-1.788-0.072-3.21-1.538-3.21-3.337 0-0.092 0.004-0.184 0.011-0.274l-0.001 0.012c-0.001-0.031-0.001-0.068-0.001-0.105 0-1.7 1.104-3.141 2.634-3.647l0.027-0.008 1.3-0.4 0.24-1.32c0-0.48 0.66-2.78 4.1-2.78 0.36 0 0.78 0 1.2 0l1.48 0.2 0.68-1.34c1.014-1.44 2.67-2.369 4.543-2.369 0.112 0 0.222 0.003 0.332 0.010l-0.015-0.001c4 0 5.9 3.5 5.9 6.96v2l2 0.14c0.34 0 3.3 0.3 3.3 3.12-0.034 1.741-1.453 3.14-3.199 3.14-0.007 0-0.014-0-0.022-0h0.001l-2.14 2.14h2.26s5.24-0.32 5.24-5.24-5.3-5.26-5.3-5.26zM24.66 18.86c-2.21-2.222-5.269-3.597-8.65-3.597s-6.44 1.375-8.649 3.596l-0 0.001-0.76 0.74 1.5 1.52 0.76-0.76c1.816-1.851 4.344-2.999 7.14-2.999s5.324 1.147 7.138 2.997l0.002 0.002 0.76 0.76 1.5-1.52-0.74-0.74zM20.78 21.4c-1.296-1.038-2.96-1.666-4.77-1.666s-3.474 0.628-4.785 1.678l0.015-0.012c-0.194 0.138-0.363 0.276-0.524 0.423l0.004-0.003-0.72 0.76 1.5 1.5 0.76-0.74c0.979-0.941 2.312-1.52 3.78-1.52s2.801 0.579 3.782 1.522l-0.002-0.002 0.2 0.2 0.56 0.54 0.56-0.54 0.94-0.96-0.74-0.76c-0.16-0.16-0.36-0.28-0.52-0.42zM16 24.92c-0.006-0-0.013-0-0.020-0-0.873 0-1.58 0.707-1.58 1.58 0 0 0 0 0 0v0c0 0.884 0.716 1.6 1.6 1.6s1.6-0.716 1.6-1.6v0c0-0 0-0 0-0 0-0.873-0.707-1.58-1.58-1.58-0.007 0-0.014 0-0.021 0h0.001z"></path>
   </svg> 
sprite bluetooth <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M24.36 9.8l-9.8-9.8v13.1l-5.52-5.1-1.4 1.52 6.92 6.48-6.92 6.5 1.4 1.52 5.52-5.12v13.1l9.8-9.8-6.68-6.2zM16.64 5.020l4.74 4.72-4.74 4.4v-9.12zM21.38 22.26l-4.74 4.72v-9.12l4.74 4.4z"></path>
   </svg> 
sprite rack <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M16.42 0l-11.2 6.62v25.38h21.58v-28.7zM16.42 29.88h-9.1v-22l9.22-5.5v27.5zM23.84 29.88v0l-4.16-1.6v-2.62l4.24 1.68v2.54zM23.84 24.3l-4.24-1.64v-2.66l4.24 1.68v2.56zM23.84 18.66l-4.18-1.62v-2.62l4.34 1.68v2.56zM23.84 13.040l-4.18-1.62v-2.62l4.34 1.68v2.56zM23.84 7.42l-4.18-1.62v-2.62l4.34 1.68v2.56z"></path>
   </svg> 
sprite wifi-none <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M0 24.44l30.84-20.82 1.16 1.7-30.84 20.8zM20 8.28l2.38-1.6c-1.904-0.634-4.096-1.006-6.373-1.020l-0.007-0c-0.032-0-0.070-0-0.108-0-5.916 0-11.266 2.426-15.109 6.337l-0.003 0.003-0.78 0.78 1.52 1.52 0.76-0.78c3.476-3.52 8.301-5.7 13.636-5.7 0.030 0 0.059 0 0.089 0l-0.005-0c0.036-0 0.079-0 0.122-0 1.376 0 2.713 0.168 3.992 0.484l-0.114-0.024zM28.92 10l-2 1.24c1.025 0.685 1.92 1.396 2.753 2.172l-0.013-0.012 0.74 0.78 1.52-1.4-0.66-0.78c-0.7-0.698-1.443-1.353-2.226-1.96l-0.054-0.040zM26 17.060l0.74 0.74 1.52-1.52-0.74-0.74c-0.907-0.892-1.916-1.685-3.007-2.358l-0.073-0.042-2 1.38c1.372 0.68 2.547 1.529 3.56 2.54l-0-0zM16 10.82v0c-0.007 0-0.015-0-0.023-0-4.461 0-8.498 1.812-11.417 4.74l-0.74 0.74 1.52 1.52 0.66-0.76c1.716-1.693 3.873-2.942 6.284-3.559l0.096-0.021 3.92-2.64zM22.1 21.68l1.52-1.52-0.78-0.76c-1.123-1.086-2.519-1.898-4.073-2.324l-0.067-0.016-2.8 1.88c0.078-0.003 0.169-0.004 0.26-0.004 2.374 0 4.5 1.061 5.931 2.734l0.009 0.011zM16 21.68c-0.006-0-0.013-0-0.020-0-1.856 0-3.36 1.504-3.36 3.36s1.504 3.36 3.36 3.36c1.856 0 3.36-1.504 3.36-3.36 0-0.007-0-0.014-0-0.021v0.001c0-0.006 0-0.013 0-0.020 0-1.834-1.486-3.32-3.32-3.32-0.007 0-0.014 0-0.021 0h0.001zM16 26.22c-0 0-0 0-0 0-0.663 0-1.2-0.537-1.2-1.2 0-0.007 0-0.014 0-0.021v0.001c0-0.663 0.537-1.2 1.2-1.2s1.2 0.537 1.2 1.2v0c0 0.006 0 0.013 0 0.020 0 0.663-0.537 1.2-1.2 1.2-0 0-0 0-0 0v0z"></path>
   </svg> 
sprite network-vert <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M25.16 19.84v-4.86h-8.1v-2.82h4.2v-9.18h-10.52v9.18h4.26v2.82h-8.16v4.86h-4.22v9.18h10.52v-9.18h-4.24v-2.8h14.2v2.8h-4.24v9.18h10.52v-9.18zM11.16 21.84v5.080h-6.48v-4.92zM12.88 10.040v-5.020h6.32v5.080zM27.4 26.92h-6.4v-4.92h6.4z"></path>
   </svg> 
sprite network-vert-disable <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M11.080 26.96h-5.080l-3.040 2h10.18v-6.96l-2 1.38zM2.64 19.84v0.88l1.36-0.88zM25.14 14.98h-1.48l-3.060 2h2.48v2.8h-4.22v9.18h10.5v-9.12h-4.22v-4.86zM27.3 22v5.060h-6.38v-5.060zM6.86 14.98v2.9l4.3-2.9zM15 12.38l0.32-0.22 3.060-2h-5.58v-5.12h6.4v4.5l2-1.38v-5.18h-10.46v9.18h4.26zM32 6.36l-1.16-1.7-30.84 20.82 1.16 1.72 18-12.22z"></path>
   </svg> 


rectangle connectivity {
card "<$wifi> wifi"
card "<$wifi-none> wifi-none"
card "<$network-vert> network-vert"
card "<$network-vert-disable> network-vert-disable"
card "<$bluetooth> bluetooth"
}


rectangle ideas {
card "<$datastore> datastore"
card "<$cloud-wireless> cloud-wireless"
}

@enduml
```
</details>

## Icon Sprites
<img src="./img/icons1.png" width=500>

<details>
  
<summary>Show Code</summary>
  
```puml

@startuml
skinparam backgroundcolor #FEFFFF
sprite windows <svg width="32" height="32" viewBox="0 0 32 32">
   <path d="M13.32 15.42v-12.8l-13.32 1.88v10.92zM14.5 15.42h17.5v-15.42l-17.5 2.46zM13.32 16.58h-13.32v10.92l13.32 1.88zM14.5 16.58v12.96l17.5 2.46v-15.42z"></path>
   </svg>
sprite kubernetes <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M15.9.476a2.14 2.14 0 0 0-.823.218L3.932 6.01c-.582.277-1.005.804-1.15 1.432L.054 19.373c-.13.56-.025 1.147.3 1.627q.057.087.12.168l7.7 9.574c.407.5 1.018.787 1.662.784h12.35c.646.001 1.258-.3 1.664-.793l7.696-9.576c.404-.5.555-1.16.4-1.786L29.2 7.43c-.145-.628-.57-1.155-1.15-1.432L16.923.695A2.14 2.14 0 0 0 15.89.476z" fill="#326ce5"></path>
    <path d="M16.002 4.542c-.384.027-.675.356-.655.74v.188c.018.213.05.424.092.633a6.22 6.22 0 0 1 .066 1.21c-.038.133-.114.253-.218.345l-.015.282c-.405.034-.807.096-1.203.186-1.666.376-3.183 1.24-4.354 2.485l-.24-.17c-.132.04-.274.025-.395-.04a6.22 6.22 0 0 1-.897-.81 5.55 5.55 0 0 0-.437-.465l-.148-.118c-.132-.106-.294-.167-.463-.175a.64.64 0 0 0-.531.236c-.226.317-.152.756.164.983l.138.11a5.55 5.55 0 0 0 .552.323c.354.197.688.428.998.7a.74.74 0 0 1 .133.384l.218.2c-1.177 1.766-1.66 3.905-1.358 6.006l-.28.08c-.073.116-.17.215-.286.288a6.22 6.22 0 0 1-1.194.197 5.57 5.57 0 0 0-.64.05l-.177.04h-.02a.67.67 0 0 0-.387 1.132.67.67 0 0 0 .684.165h.013l.18-.02c.203-.06.403-.134.598-.218.375-.15.764-.265 1.162-.34.138.008.27.055.382.135l.3-.05c.65 2.017 2.016 3.726 3.84 4.803l-.122.255c.056.117.077.247.06.376-.165.382-.367.748-.603 1.092a5.58 5.58 0 0 0-.358.533l-.085.18a.67.67 0 0 0 .65 1.001.67.67 0 0 0 .553-.432l.083-.17c.076-.2.14-.404.192-.61.177-.437.273-.906.515-1.196a.54.54 0 0 1 .286-.14l.15-.273a8.62 8.62 0 0 0 6.146.015l.133.255c.136.02.258.095.34.205.188.358.34.733.456 1.12a5.57 5.57 0 0 0 .194.611l.083.17a.67.67 0 0 0 1.187.131.67.67 0 0 0 .016-.701l-.087-.18a5.55 5.55 0 0 0-.358-.531c-.23-.332-.428-.686-.6-1.057a.52.52 0 0 1 .068-.4 2.29 2.29 0 0 1-.111-.269c1.82-1.085 3.18-2.8 3.823-4.82l.284.05c.102-.093.236-.142.373-.138.397.076.786.2 1.162.34.195.09.395.166.598.23.048.013.118.024.172.037h.013a.67.67 0 0 0 .841-.851.67.67 0 0 0-.544-.446l-.194-.046a5.57 5.57 0 0 0-.64-.05c-.404-.026-.804-.092-1.194-.197-.12-.067-.22-.167-.288-.288l-.27-.08a8.65 8.65 0 0 0-1.386-5.993l.236-.218c-.01-.137.035-.273.124-.378.307-.264.64-.497.99-.696a5.57 5.57 0 0 0 .552-.323l.146-.118a.67.67 0 0 0-.133-1.202.67.67 0 0 0-.696.161l-.148.118a5.57 5.57 0 0 0-.437.465c-.264.302-.556.577-.873.823a.74.74 0 0 1-.404.044l-.253.18c-1.46-1.53-3.427-2.48-5.535-2.67 0-.1-.013-.25-.015-.297-.113-.078-.192-.197-.218-.332a6.23 6.23 0 0 1 .076-1.207c.043-.21.073-.42.092-.633v-.2c.02-.384-.27-.713-.655-.74zm-.834 5.166l-.2 3.493h-.015c-.01.216-.137.4-.332.504s-.426.073-.6-.054l-2.865-2.03a6.86 6.86 0 0 1 3.303-1.799c.234-.05.47-.088.707-.114zm1.668 0c1.505.187 2.906.863 3.99 1.924l-2.838 2.017c-.175.14-.415.168-.618.072s-.333-.3-.336-.524zm-6.72 3.227l2.62 2.338v.015c.163.142.234.363.186.574s-.21.378-.417.435v.01l-3.362.967a6.86 6.86 0 0 1 .974-4.34zm11.753 0c.796 1.295 1.148 2.814 1.002 4.327l-3.367-.97v-.013c-.21-.057-.37-.224-.417-.435s.023-.43.186-.574l2.6-2.327zm-6.404 2.52h1.072l.655.832-.238 1.04-.963.463-.965-.463-.227-1.04zm3.434 2.838c.045-.005.1-.005.135 0l3.467.585c-.5 1.44-1.487 2.67-2.775 3.493l-1.34-3.244a.59.59 0 0 1 .509-.819zm-5.823.015c.196.003.377.104.484.268s.124.37.047.55v.013l-1.332 3.218C11 21.54 10.032 20.325 9.517 18.9l3.437-.583c.038-.004.077-.004.116 0zm2.904 1.4a.59.59 0 0 1 .537.308h.013l1.694 3.057-.677.2c-1.246.285-2.547.218-3.758-.194l1.7-3.057c.103-.18.293-.29.5-.295z" fill="#fff" stroke="#fff" stroke-width=".055"></path>
   </svg>
sprite redhat <svg width="16" height="16" viewBox="0 0 64 64">
    <path d="M57.434 48.97c-1.203-.276-2.48-.45-3.77-.45-2.2 0-4.218.382-5.7 1a.5.5 0 0 0-.28.445.51.51 0 0 0 .045.204c.175.507-.113 1.057-1.547 1.373-2.127.467-3.47 2.662-4.237 3.4-.903.857-3.45 1.382-3.067.872.3-.398 1.446-1.644 2.144-3 .624-1.203 1.18-1.545 1.945-2.694.224-.335 1.095-1.518 1.348-2.455.284-.912.188-2.06.297-2.53.157-.68.8-2.158.847-3 .028-.473-1.97.673-2.917.673s-1.87-.57-2.717-.6c-1.048-.048-1.72.8-2.67.66-.54-.087-.997-.564-1.943-.6-1.347-.05-2.993.75-6.084.65-3.04-.1-5.85-3.843-6.232-4.438-.45-.698-.998-.698-1.596-.15s-1.336.117-1.546-.25c-.4-.697-1.465-2.736-3.117-3.164-2.284-.6-3.44 1.264-3.3 2.742.152 1.5 1.12 1.92 1.57 2.717s.678 1.3 1.523 1.663c.598.25.82.62.643 1.112-.157.427-.78.525-1.2.545-.87.042-1.48-.194-1.925-.48-.518-.33-.938-.788-1.4-1.566-.523-.858-1.345-1.232-2.304-1.232-.457 0-.884.12-1.264.316-1.502.783-3.3 1.244-5.216 1.244l-2.17.002C5.8 54.328 17.467 63.222 31.22 63.222c10.987 0 20.648-5.674 26.213-14.253m5-3.347a1.58 1.58 0 0 0-1.581 1.578 1.58 1.58 0 0 0 1.581 1.578A1.58 1.58 0 0 0 64 47.2a1.58 1.58 0 0 0-1.577-1.578zm0 .28a1.3 1.3 0 0 1 1.295 1.3c0 .718-.58 1.295-1.295 1.295a1.3 1.3 0 0 1-1.302-1.295 1.3 1.3 0 0 1 1.302-1.3zm-.534.492v1.6h.243v-.697h.282l.425.697h.273l-.46-.7c.24-.03.42-.154.42-.44 0-.32-.188-.46-.568-.46zm.243.206h.333c.17 0 .35.037.35.236 0 .246-.183.264-.4.264h-.292z" fill="#fff"></path>
    <path d="M31.224.778C13.98.778 0 14.757 0 32.003a31.14 31.14 0 0 0 1.63 9.98H3.8c1.925 0 3.714-.464 5.216-1.245a2.75 2.75 0 0 1 1.265-.315c.96 0 1.78.373 2.304 1.23.45.778.87 1.236 1.4 1.564.445.285 1.055.522 1.926.48.4-.02 1.032-.12 1.2-.546.178-.5-.045-.862-.643-1.1-.845-.353-1.074-.87-1.523-1.666s-1.418-1.218-1.57-2.716c-.15-1.477 1.006-3.333 3.3-2.74 1.652.427 2.718 2.468 3.117 3.165.2.367.947.797 1.545.25s1.146-.55 1.596.15c.383.595 3.192 4.34 6.233 4.438 3.092.1 4.736-.7 6.083-.65.946.036 1.402.5 1.943.598.948.15 1.62-.708 2.67-.658.846.042 1.77.607 2.716.607s2.945-1.143 2.917-.672c-.05.834-.7 2.3-.848 3-.1.472-.013 1.62-.297 2.532-.254.935-1.124 2.12-1.348 2.455-.765 1.148-1.32 1.5-1.945 2.692-.698 1.346-1.844 2.592-2.144 3-.383.5 2.164-.017 3.068-.873.767-.73 2.1-2.924 4.237-3.4 1.435-.315 1.722-.865 1.547-1.374a.51.51 0 0 1-.044-.203c0-.194.116-.364.28-.446 1.482-.617 3.5-1 5.7-1 1.292 0 2.568.172 3.772.45a31.08 31.08 0 0 0 5.01-16.972C62.448 14.757 48.47.778 31.224.778zM38.1 46.1c.16.155.437.684.098 1.352-.2.355-.393.603-.76.895-.44.353-1.298.758-2.475.012-.632-.402-.672-.537-1.545-.424-.624.082-.873-.548-.65-1.073s1.147-.945 2.294-.273c.516.303 1.32.944 2.025.376.3-.234.466-.4.87-.86.02-.02.044-.03.073-.03s.05.01.067.024" fill="#100f0d"></path>
    <path d="M35.916 7.216a10.24 10.24 0 0 0-2.14.312c-1.036.266-3.064 1.32-6.824.474-6.51-1.466-7.473 1.794-7.845 3.212l-1.27 5.456c-.3 1.644-.69 4.5 9.414 6.426 4.708.896 4.947 2.112 5.155 2.987.374 1.568.972 2.466 1.645 2.915s-.001.82-.747.897c-2.005.208-9.415-1.918-13.798-4.408-3.587-2.193-3.646-4.166-2.825-5.84-5.418-.586-9.485.508-10.222 3.073-1.265 4.402 9.677 11.92 22.137 15.693 13.077 3.96 26.527 1.195 28.022-7.024.678-3.734-2.466-6.496-7.77-7.692-.31 1.037-.75 2.362-2.7 3.365-.284.146-.392-.092-.262-.317.738-1.255.87-1.57 1.083-2.064.3-.724.457-1.755-.14-3.9-1.175-4.226-3.624-9.874-5.405-11.707-1.29-1.326-3.362-1.937-5.506-1.856zm.588 1.448l.178.001c2 .045 3.604.84 3.58 1.776s-1.665 1.66-3.667 1.614a7.1 7.1 0 0 1-1.78-.26c-.062-.016-.106-.068-.106-.13s.044-.115.108-.13c1.248-.29 2.092-.76 2.032-1.208-.078-.592-1.712-.912-3.65-.72a13.04 13.04 0 0 0-.62.081c-.07.001-.117-.042-.117-.093 0-.04.023-.072.057-.087.7-.37 1.742-.662 2.936-.784.36-.037.71-.057 1.046-.06zm-14.84 3.76c.32-.013.615.157.756.332.34.425 1.07 1.12 2.017 1.096s2.04-.224 3.56-.224c1.544 0 2.582.577 2.64 1.072.05.423-.126.82-1.844.945-3.607.26-3.98.65-4.657 1.37-.953 1.014-2.207-1.316-2.207-1.316-.753-.16-1.666-1.373-1.173-2.507.243-.56.587-.756.907-.768z" fill="#cd1e25"></path>
   </svg>
sprite ubuntu <svg width="32" height="32" viewBox="0 0 32 32">
     <path d="M32 16c0 8.836-7.164 16-16 16S0 24.836 0 16 7.164 0 16 0s16 7.164 16 16z" fill="#dd4814"></path>
    <path d="M5.12 13.864c-1.18 0-2.137.956-2.137 2.137s.956 2.136 2.137 2.136S7.257 17.18 7.257 16 6.3 13.864 5.12 13.864zm15.252 9.71c-1.022.6-1.372 1.896-.782 2.917s1.895 1.372 2.917.782 1.372-1.895.782-2.917-1.896-1.37-2.917-.782zM9.76 16a6.23 6.23 0 0 1 2.653-5.105L10.852 8.28a9.3 9.3 0 0 0-3.838 5.394C7.69 14.224 8.12 15.06 8.12 16s-.432 1.776-1.106 2.326c.577 2.237 1.968 4.146 3.838 5.395l1.562-2.616A6.23 6.23 0 0 1 9.761 16zM16 9.76a6.24 6.24 0 0 1 6.215 5.687l3.044-.045a9.25 9.25 0 0 0-2.757-6.019c-.812.307-1.75.26-2.56-.208a2.99 2.99 0 0 1-1.461-2.118C17.7 6.84 16.86 6.72 16 6.72c-1.477 0-2.873.347-4.113.96l1.484 2.66c.8-.372 1.69-.58 2.628-.58zm0 12.48c-.94 0-1.83-.21-2.628-.58l-1.484 2.66c1.24.614 2.636.96 4.113.96a9.28 9.28 0 0 0 2.479-.338c.14-.858.65-1.648 1.46-2.118s1.75-.514 2.56-.207a9.25 9.25 0 0 0 2.757-6.019l-3.045-.045A6.24 6.24 0 0 1 16 22.24zm4.372-13.813c1.022.6 2.328.24 2.917-.78s.24-2.328-.78-2.918-2.328-.24-2.918.783-.24 2.327.782 2.917z" fill="#fff"></path>
  </svg>
sprite dell-icon <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M32,15.05v1.88H25.91V7.48h2.14v7.57ZM3.83,16.93a4.72,4.72,0,0,0,4.56-3.5v0l5.33,4.18,5.34-4.17v3.53h6.11V15.05H21.23V7.48H19.08V11L14,15l-1.14-.9,5.11-4L16.41,8.93l-5.12,4L10.14,12l5.12-4L13.74,6.85,8.41,11A4.74,4.74,0,0,0,3.84,7.49H0v9.44ZM2.16,15.05V9.36H3.85a2.72,2.72,0,0,1,2.57,2.85,2.71,2.71,0,0,1-2.57,2.84ZM32,23c0-.56-.31-.81-.94-.94s-1-.19-1-.63.25-.5.69-.5.75.25.75.57l.06.06h.25l.07-.06c0-.63-.5-.88-1.13-.88s-1.07.38-1.07.81.38.76,1,.88.94.19.94.69c0,.32-.19.57-.82.57S30,23.27,30,22.9l-.06-.06h-.26l-.06.06c0,.56.43,1,1.19,1S32,23.52,32,23Zm-2.71-.63.06-.06v-.19a1.39,1.39,0,1,0-2.76,0v.12A1.44,1.44,0,0,0,28,23.9h.12A1.15,1.15,0,0,0,29.29,23h0l-.06-.06H29l-.06.06a.83.83,0,0,1-.81.63h-.07A1.09,1.09,0,0,1,27,22.49v0h0l.07-.06Zm-.37-.31H27L27,22a1,1,0,0,1,2,0h0Zm-2.77,1.69v-3l-.06-.06h-.25l-.06.06v3l.06.06h.25Zm0-3.64v-.37l-.06-.06h-.25l-.06.06v.38l.06.06h.25Zm-2.37,3.46c-.63,0-1-.44-1-1.34s.38-1.33,1-1.33,1,.44,1,1.33S24.4,23.59,23.78,23.59Zm1-.19c0,.82-.19,1.44-.94,1.44-.57,0-.75-.25-.82-.56L23,24.22h-.25l-.06.06c.06.5.44.88,1.19.88s1.33-.51,1.33-1.76V20.76l-.06-.06h-.19l-.06.06-.06.38h-.07a1,1,0,0,0-.89-.5h-.11c-.88,0-1.33.69-1.33,1.63s.44,1.63,1.33,1.63h.11a1,1,0,0,0,.89-.5h.05ZM20.7,21c.63,0,1.07.5,1.07,1.34s-.44,1.33-1.07,1.33-1.06-.5-1.06-1.33S20.08,21,20.7,21Zm0,2.95a1.44,1.44,0,0,0,1.45-1.63,1.46,1.46,0,1,0-2.89,0A1.44,1.44,0,0,0,20.7,23.9Zm-1.88-.12V19.51l-.06-.06h-.25l-.06.06v4.27l.06.06h.25ZM16.56,21c.63,0,1.07.5,1.07,1.34s-.44,1.33-1.07,1.33-1.06-.5-1.06-1.33S15.94,21,16.56,21Zm0,2.95A1.44,1.44,0,0,0,18,22.27a1.46,1.46,0,1,0-2.89,0A1.44,1.44,0,0,0,16.56,23.9Zm-1.82-.12V21.89a1.09,1.09,0,0,0-1.13-1.25h0a1.12,1.12,0,0,0-.94.5h-.07l-.06-.38-.06-.06h-.2l-.06.06v3l.06.07h.25l.07-.07V22.08c0-.69.31-1.13,1-1.13.5,0,.81.32.81.94v1.89l.07.06h.24Zm-3.2,0V21.89a1.09,1.09,0,0,0-1.13-1.25h-.05a1.13,1.13,0,0,0-.94.5H9.33V19.51l-.06-.06H9L9,19.51v4.27l.06.06h.25l.07-.06V22.09c0-.7.31-1.13,1-1.13.5,0,.81.31.81.94v1.88l.07.06h.25ZM6.15,22.27c0-.88.44-1.33,1.06-1.33H7.3a.86.86,0,0,1,.85.76h0l.07.06h.25l.06-.06a1.21,1.21,0,0,0-1.32-1.07c-.81,0-1.44.5-1.44,1.63s.63,1.64,1.44,1.64a1.21,1.21,0,0,0,1.32-1.07l-.06-.06H8.22l-.07.06a.85.85,0,0,1-.85.75H7.21c-.62,0-1.06-.44-1.06-1.33Zm-.69.09.06-.06v-.19a1.35,1.35,0,0,0-1.38-1.5,1.38,1.38,0,0,0-1.38,1.53v.13A1.43,1.43,0,0,0,4.2,23.9h.12A1.18,1.18,0,0,0,5.46,23h0l-.07-.06H5.14L5.08,23a.83.83,0,0,1-.81.63H4.2A1.1,1.1,0,0,1,3.13,22.5v0h0l.07-.06Zm-.38-.31H3.2L3.13,22a1,1,0,0,1,2,0h0ZM3.39,19.66v-.18l-.06,0H.06L0,19.51v.19l.06.06H1.44l.07.06v4l.06.06h.25l.06-.06v-4L2,19.76H3.33Z"></path>
   </svg>
sprite dell-brand <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M16 0c-8.837 0-16 7.163-16 16s7.163 16 16 16c8.837 0 16-7.163 16-16v0c0-8.837-7.163-16-16-16v0zM16 30.4c-7.953 0-14.4-6.447-14.4-14.4s6.447-14.4 14.4-14.4c7.953 0 14.4 6.447 14.4 14.4v0c0 7.953-6.447 14.4-14.4 14.4v0zM28.48 18.12v1.4h-4.55v-7h1.6v5.64zM7.48 19.52c1.628-0.002 2.998-1.105 3.404-2.605l0.006-0.025 4 3.11 4-3.11v2.63h4.54v-1.4h-2.98v-5.64h-1.6v2.63l-3.85 2.99-0.86-0.67 1.86-1.43 2-1.56-1.14-0.88-3.82 3-0.85-0.67 3.82-3-1.15-0.89-4 3.11c-0.412-1.525-1.782-2.628-3.41-2.63h-2.84v7zM6.22 18.12v-4.24h1.25c1.071 0.042 1.924 0.921 1.924 1.999 0 0.043-0.001 0.085-0.004 0.127l0-0.006c0.002 0.036 0.004 0.079 0.004 0.121 0 1.078-0.852 1.956-1.92 1.998l-0.004 0z"></path>
   </svg>
sprite vmware <svg width="32" height="32" viewBox="0 0 32 32">
      <path d="M32,16.77V13.8372c0-2.4818-2.4817-3.8355-4.5123-3.8355a6.7446,6.7446,0,0,0-3.8354,1.5793,5.066,5.066,0,0,0-3.61-1.5793,5.9389,5.9389,0,0,0-3.8354,1.5793,3.8172,3.8172,0,0,0-3.3842-1.5793A3.4913,3.4913,0,0,0,9.482,11.8232L6.5058,18.575,3.2011,11.0011a1.67,1.67,0,0,0-2.1883-.8656h0A1.67,1.67,0,0,0,.1536,12.37L4.25,21.2824s.6769,1.5793,2.0305,1.5793a1.9088,1.9088,0,0,0,2.0306-1.1281c.3124-.4687,2.6809-5.45,4.1078-8.4692a.5679.5679,0,0,1,1.0812.2437v7.4868a1.8462,1.8462,0,0,0,1.6848,1.8629,1.8051,1.8051,0,0,0,1.9251-1.801V14.8524a1.9177,1.9177,0,0,1,3.8354,0v6.2044a1.8049,1.8049,0,0,0,3.61,0V14.8524a1.9177,1.9177,0,0,1,3.8354,0v6.2044a1.8049,1.8049,0,0,0,3.61,0Z"></path>

   </svg>

card "<$windows> windows"
card "<$kubernetes> kubernetes"
card "<$redhat*.5> redhat"
card "<$ubuntu> ubuntu"
card "<$dell-brand> dell-brand"
card "<$dell-icon> dell-icon"
card "<$vmware> vmware"
@enduml


```

</details>


## Cloud Sprites
<img src="./img/cloud.png" width=800>

<details>
  
<summary>Show Code</summary>
  
```puml

@startuml
skinparam backgroundcolor #FEFFFF
   
sprite aws <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M15.63 31.388l-7.135-2.56V18.373l7.135 2.43zm1.3 0l7.135-2.56V18.373l-7.135 2.432zm-7.7-13.8l7.2-2.033 6.696 2.16-6.696 2.273zm-2.092-.8L0 14.22V3.75l7.135 2.43zm1.307 0l7.135-2.56V3.75L8.443 6.192zm-7.7-13.8l7.2-2.043 6.696 2.16-6.696 2.273zm23.052 13.8l-7.135-2.56V3.75l7.135 2.43zm1.3 0l7.135-2.56V3.75l-7.135 2.43zm-7.7-13.8l7.2-2.033 6.696 2.16-6.696 2.273z" fill="#f90" fill-rule="evenodd"></path>
   </svg> 

sprite gcp <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M16.255 3.172c-5.729-0.13-10.813 3.661-12.313 9.193 0.068-0.026-0.073 0.016 0 0-5.167 3.401-5.229 10.812-0.328 14.589l0.005-0.010-0.010 0.042c1.568 1.182 3.474 1.813 5.438 1.807h6.896l0.042 0.036h6.922c8.917 0.073 12.5-11.469 5.115-16.464-0.635-2.349-1.943-4.458-3.76-6.068l-0.057 0.057 0.005-0.068c-2.203-1.943-5.021-3.047-7.953-3.115zM15.776 8.703c1.656-0.057 3.359 0.49 4.646 1.531 1.609 1.344 2.526 3.344 2.484 5.438v0.693c4.708-0.094 4.708 7.016 0 6.922h-6.922l-0.010 0.010v-0.052h-6.927c-0.49 0-0.974-0.104-1.422-0.307-2.203-0.995-2.729-3.891-1.021-5.604 1.714-1.708 4.604-1.182 5.604 1.021l4.016-4.016c-1.333-1.74-3.26-2.932-5.411-3.354 0.026-0.010 0.052-0.031 0.073-0.026 1.26-1.385 3.026-2.198 4.896-2.255z"></path>
   </svg>

sprite azure <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M19.867 7.282l-4.733 9.533 8.333 9.66L8 28.23l24 .25zm-.934-3.762L8.067 12.613 0 26.223l6.867-.7z"></path>

   </svg> 

sprite vmware <svg width="32" height="32" viewBox="0 0 32 32">
      <path d="M32,16.77V13.8372c0-2.4818-2.4817-3.8355-4.5123-3.8355a6.7446,6.7446,0,0,0-3.8354,1.5793,5.066,5.066,0,0,0-3.61-1.5793,5.9389,5.9389,0,0,0-3.8354,1.5793,3.8172,3.8172,0,0,0-3.3842-1.5793A3.4913,3.4913,0,0,0,9.482,11.8232L6.5058,18.575,3.2011,11.0011a1.67,1.67,0,0,0-2.1883-.8656h0A1.67,1.67,0,0,0,.1536,12.37L4.25,21.2824s.6769,1.5793,2.0305,1.5793a1.9088,1.9088,0,0,0,2.0306-1.1281c.3124-.4687,2.6809-5.45,4.1078-8.4692a.5679.5679,0,0,1,1.0812.2437v7.4868a1.8462,1.8462,0,0,0,1.6848,1.8629,1.8051,1.8051,0,0,0,1.9251-1.801V14.8524a1.9177,1.9177,0,0,1,3.8354,0v6.2044a1.8049,1.8049,0,0,0,3.61,0V14.8524a1.9177,1.9177,0,0,1,3.8354,0v6.2044a1.8049,1.8049,0,0,0,3.61,0Z"></path>

   </svg>
sprite windows <svg width="32" height="32" viewBox="0 0 32 32">
   <path d="M13.32 15.42v-12.8l-13.32 1.88v10.92zM14.5 15.42h17.5v-15.42l-17.5 2.46zM13.32 16.58h-13.32v10.92l13.32 1.88zM14.5 16.58v12.96l17.5 2.46v-15.42z"></path>
   </svg>
sprite kubernetes <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M15.9.476a2.14 2.14 0 0 0-.823.218L3.932 6.01c-.582.277-1.005.804-1.15 1.432L.054 19.373c-.13.56-.025 1.147.3 1.627q.057.087.12.168l7.7 9.574c.407.5 1.018.787 1.662.784h12.35c.646.001 1.258-.3 1.664-.793l7.696-9.576c.404-.5.555-1.16.4-1.786L29.2 7.43c-.145-.628-.57-1.155-1.15-1.432L16.923.695A2.14 2.14 0 0 0 15.89.476z" fill="#326ce5"></path>
    <path d="M16.002 4.542c-.384.027-.675.356-.655.74v.188c.018.213.05.424.092.633a6.22 6.22 0 0 1 .066 1.21c-.038.133-.114.253-.218.345l-.015.282c-.405.034-.807.096-1.203.186-1.666.376-3.183 1.24-4.354 2.485l-.24-.17c-.132.04-.274.025-.395-.04a6.22 6.22 0 0 1-.897-.81 5.55 5.55 0 0 0-.437-.465l-.148-.118c-.132-.106-.294-.167-.463-.175a.64.64 0 0 0-.531.236c-.226.317-.152.756.164.983l.138.11a5.55 5.55 0 0 0 .552.323c.354.197.688.428.998.7a.74.74 0 0 1 .133.384l.218.2c-1.177 1.766-1.66 3.905-1.358 6.006l-.28.08c-.073.116-.17.215-.286.288a6.22 6.22 0 0 1-1.194.197 5.57 5.57 0 0 0-.64.05l-.177.04h-.02a.67.67 0 0 0-.387 1.132.67.67 0 0 0 .684.165h.013l.18-.02c.203-.06.403-.134.598-.218.375-.15.764-.265 1.162-.34.138.008.27.055.382.135l.3-.05c.65 2.017 2.016 3.726 3.84 4.803l-.122.255c.056.117.077.247.06.376-.165.382-.367.748-.603 1.092a5.58 5.58 0 0 0-.358.533l-.085.18a.67.67 0 0 0 .65 1.001.67.67 0 0 0 .553-.432l.083-.17c.076-.2.14-.404.192-.61.177-.437.273-.906.515-1.196a.54.54 0 0 1 .286-.14l.15-.273a8.62 8.62 0 0 0 6.146.015l.133.255c.136.02.258.095.34.205.188.358.34.733.456 1.12a5.57 5.57 0 0 0 .194.611l.083.17a.67.67 0 0 0 1.187.131.67.67 0 0 0 .016-.701l-.087-.18a5.55 5.55 0 0 0-.358-.531c-.23-.332-.428-.686-.6-1.057a.52.52 0 0 1 .068-.4 2.29 2.29 0 0 1-.111-.269c1.82-1.085 3.18-2.8 3.823-4.82l.284.05c.102-.093.236-.142.373-.138.397.076.786.2 1.162.34.195.09.395.166.598.23.048.013.118.024.172.037h.013a.67.67 0 0 0 .841-.851.67.67 0 0 0-.544-.446l-.194-.046a5.57 5.57 0 0 0-.64-.05c-.404-.026-.804-.092-1.194-.197-.12-.067-.22-.167-.288-.288l-.27-.08a8.65 8.65 0 0 0-1.386-5.993l.236-.218c-.01-.137.035-.273.124-.378.307-.264.64-.497.99-.696a5.57 5.57 0 0 0 .552-.323l.146-.118a.67.67 0 0 0-.133-1.202.67.67 0 0 0-.696.161l-.148.118a5.57 5.57 0 0 0-.437.465c-.264.302-.556.577-.873.823a.74.74 0 0 1-.404.044l-.253.18c-1.46-1.53-3.427-2.48-5.535-2.67 0-.1-.013-.25-.015-.297-.113-.078-.192-.197-.218-.332a6.23 6.23 0 0 1 .076-1.207c.043-.21.073-.42.092-.633v-.2c.02-.384-.27-.713-.655-.74zm-.834 5.166l-.2 3.493h-.015c-.01.216-.137.4-.332.504s-.426.073-.6-.054l-2.865-2.03a6.86 6.86 0 0 1 3.303-1.799c.234-.05.47-.088.707-.114zm1.668 0c1.505.187 2.906.863 3.99 1.924l-2.838 2.017c-.175.14-.415.168-.618.072s-.333-.3-.336-.524zm-6.72 3.227l2.62 2.338v.015c.163.142.234.363.186.574s-.21.378-.417.435v.01l-3.362.967a6.86 6.86 0 0 1 .974-4.34zm11.753 0c.796 1.295 1.148 2.814 1.002 4.327l-3.367-.97v-.013c-.21-.057-.37-.224-.417-.435s.023-.43.186-.574l2.6-2.327zm-6.404 2.52h1.072l.655.832-.238 1.04-.963.463-.965-.463-.227-1.04zm3.434 2.838c.045-.005.1-.005.135 0l3.467.585c-.5 1.44-1.487 2.67-2.775 3.493l-1.34-3.244a.59.59 0 0 1 .509-.819zm-5.823.015c.196.003.377.104.484.268s.124.37.047.55v.013l-1.332 3.218C11 21.54 10.032 20.325 9.517 18.9l3.437-.583c.038-.004.077-.004.116 0zm2.904 1.4a.59.59 0 0 1 .537.308h.013l1.694 3.057-.677.2c-1.246.285-2.547.218-3.758-.194l1.7-3.057c.103-.18.293-.29.5-.295z" fill="#fff" stroke="#fff" stroke-width=".055"></path>
   </svg>
sprite server-tower <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M7.6 0v32h16.8v-32zM22.28 29.86h-12.56v-27.72h12.56zM11.4 4.2h9.2v2.12h-9.2z"></path>
   </svg>
sprite server <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M0 11.040v10h32v-10zM29.86 18.82h-27.72v-5.64h27.72zM5.34 14.94h21.32v2.12h-21.32z"></path>
   </svg>   

sprite ubuntu <svg width="32" height="32" viewBox="0 0 32 32">
     <path d="M32 16c0 8.836-7.164 16-16 16S0 24.836 0 16 7.164 0 16 0s16 7.164 16 16z" fill="#dd4814"></path>
    <path d="M5.12 13.864c-1.18 0-2.137.956-2.137 2.137s.956 2.136 2.137 2.136S7.257 17.18 7.257 16 6.3 13.864 5.12 13.864zm15.252 9.71c-1.022.6-1.372 1.896-.782 2.917s1.895 1.372 2.917.782 1.372-1.895.782-2.917-1.896-1.37-2.917-.782zM9.76 16a6.23 6.23 0 0 1 2.653-5.105L10.852 8.28a9.3 9.3 0 0 0-3.838 5.394C7.69 14.224 8.12 15.06 8.12 16s-.432 1.776-1.106 2.326c.577 2.237 1.968 4.146 3.838 5.395l1.562-2.616A6.23 6.23 0 0 1 9.761 16zM16 9.76a6.24 6.24 0 0 1 6.215 5.687l3.044-.045a9.25 9.25 0 0 0-2.757-6.019c-.812.307-1.75.26-2.56-.208a2.99 2.99 0 0 1-1.461-2.118C17.7 6.84 16.86 6.72 16 6.72c-1.477 0-2.873.347-4.113.96l1.484 2.66c.8-.372 1.69-.58 2.628-.58zm0 12.48c-.94 0-1.83-.21-2.628-.58l-1.484 2.66c1.24.614 2.636.96 4.113.96a9.28 9.28 0 0 0 2.479-.338c.14-.858.65-1.648 1.46-2.118s1.75-.514 2.56-.207a9.25 9.25 0 0 0 2.757-6.019l-3.045-.045A6.24 6.24 0 0 1 16 22.24zm4.372-13.813c1.022.6 2.328.24 2.917-.78s.24-2.328-.78-2.918-2.328-.24-2.918.783-.24 2.327.782 2.917z" fill="#fff"></path>
  </svg>

sprite redhat <svg width="16" height="16" viewBox="0 0 64 64">
    <path d="M57.434 48.97c-1.203-.276-2.48-.45-3.77-.45-2.2 0-4.218.382-5.7 1a.5.5 0 0 0-.28.445.51.51 0 0 0 .045.204c.175.507-.113 1.057-1.547 1.373-2.127.467-3.47 2.662-4.237 3.4-.903.857-3.45 1.382-3.067.872.3-.398 1.446-1.644 2.144-3 .624-1.203 1.18-1.545 1.945-2.694.224-.335 1.095-1.518 1.348-2.455.284-.912.188-2.06.297-2.53.157-.68.8-2.158.847-3 .028-.473-1.97.673-2.917.673s-1.87-.57-2.717-.6c-1.048-.048-1.72.8-2.67.66-.54-.087-.997-.564-1.943-.6-1.347-.05-2.993.75-6.084.65-3.04-.1-5.85-3.843-6.232-4.438-.45-.698-.998-.698-1.596-.15s-1.336.117-1.546-.25c-.4-.697-1.465-2.736-3.117-3.164-2.284-.6-3.44 1.264-3.3 2.742.152 1.5 1.12 1.92 1.57 2.717s.678 1.3 1.523 1.663c.598.25.82.62.643 1.112-.157.427-.78.525-1.2.545-.87.042-1.48-.194-1.925-.48-.518-.33-.938-.788-1.4-1.566-.523-.858-1.345-1.232-2.304-1.232-.457 0-.884.12-1.264.316-1.502.783-3.3 1.244-5.216 1.244l-2.17.002C5.8 54.328 17.467 63.222 31.22 63.222c10.987 0 20.648-5.674 26.213-14.253m5-3.347a1.58 1.58 0 0 0-1.581 1.578 1.58 1.58 0 0 0 1.581 1.578A1.58 1.58 0 0 0 64 47.2a1.58 1.58 0 0 0-1.577-1.578zm0 .28a1.3 1.3 0 0 1 1.295 1.3c0 .718-.58 1.295-1.295 1.295a1.3 1.3 0 0 1-1.302-1.295 1.3 1.3 0 0 1 1.302-1.3zm-.534.492v1.6h.243v-.697h.282l.425.697h.273l-.46-.7c.24-.03.42-.154.42-.44 0-.32-.188-.46-.568-.46zm.243.206h.333c.17 0 .35.037.35.236 0 .246-.183.264-.4.264h-.292z" fill="#fff"></path>
    <path d="M31.224.778C13.98.778 0 14.757 0 32.003a31.14 31.14 0 0 0 1.63 9.98H3.8c1.925 0 3.714-.464 5.216-1.245a2.75 2.75 0 0 1 1.265-.315c.96 0 1.78.373 2.304 1.23.45.778.87 1.236 1.4 1.564.445.285 1.055.522 1.926.48.4-.02 1.032-.12 1.2-.546.178-.5-.045-.862-.643-1.1-.845-.353-1.074-.87-1.523-1.666s-1.418-1.218-1.57-2.716c-.15-1.477 1.006-3.333 3.3-2.74 1.652.427 2.718 2.468 3.117 3.165.2.367.947.797 1.545.25s1.146-.55 1.596.15c.383.595 3.192 4.34 6.233 4.438 3.092.1 4.736-.7 6.083-.65.946.036 1.402.5 1.943.598.948.15 1.62-.708 2.67-.658.846.042 1.77.607 2.716.607s2.945-1.143 2.917-.672c-.05.834-.7 2.3-.848 3-.1.472-.013 1.62-.297 2.532-.254.935-1.124 2.12-1.348 2.455-.765 1.148-1.32 1.5-1.945 2.692-.698 1.346-1.844 2.592-2.144 3-.383.5 2.164-.017 3.068-.873.767-.73 2.1-2.924 4.237-3.4 1.435-.315 1.722-.865 1.547-1.374a.51.51 0 0 1-.044-.203c0-.194.116-.364.28-.446 1.482-.617 3.5-1 5.7-1 1.292 0 2.568.172 3.772.45a31.08 31.08 0 0 0 5.01-16.972C62.448 14.757 48.47.778 31.224.778zM38.1 46.1c.16.155.437.684.098 1.352-.2.355-.393.603-.76.895-.44.353-1.298.758-2.475.012-.632-.402-.672-.537-1.545-.424-.624.082-.873-.548-.65-1.073s1.147-.945 2.294-.273c.516.303 1.32.944 2.025.376.3-.234.466-.4.87-.86.02-.02.044-.03.073-.03s.05.01.067.024" fill="#100f0d"></path>
    <path d="M35.916 7.216a10.24 10.24 0 0 0-2.14.312c-1.036.266-3.064 1.32-6.824.474-6.51-1.466-7.473 1.794-7.845 3.212l-1.27 5.456c-.3 1.644-.69 4.5 9.414 6.426 4.708.896 4.947 2.112 5.155 2.987.374 1.568.972 2.466 1.645 2.915s-.001.82-.747.897c-2.005.208-9.415-1.918-13.798-4.408-3.587-2.193-3.646-4.166-2.825-5.84-5.418-.586-9.485.508-10.222 3.073-1.265 4.402 9.677 11.92 22.137 15.693 13.077 3.96 26.527 1.195 28.022-7.024.678-3.734-2.466-6.496-7.77-7.692-.31 1.037-.75 2.362-2.7 3.365-.284.146-.392-.092-.262-.317.738-1.255.87-1.57 1.083-2.064.3-.724.457-1.755-.14-3.9-1.175-4.226-3.624-9.874-5.405-11.707-1.29-1.326-3.362-1.937-5.506-1.856zm.588 1.448l.178.001c2 .045 3.604.84 3.58 1.776s-1.665 1.66-3.667 1.614a7.1 7.1 0 0 1-1.78-.26c-.062-.016-.106-.068-.106-.13s.044-.115.108-.13c1.248-.29 2.092-.76 2.032-1.208-.078-.592-1.712-.912-3.65-.72a13.04 13.04 0 0 0-.62.081c-.07.001-.117-.042-.117-.093 0-.04.023-.072.057-.087.7-.37 1.742-.662 2.936-.784.36-.037.71-.057 1.046-.06zm-14.84 3.76c.32-.013.615.157.756.332.34.425 1.07 1.12 2.017 1.096s2.04-.224 3.56-.224c1.544 0 2.582.577 2.64 1.072.05.423-.126.82-1.844.945-3.607.26-3.98.65-4.657 1.37-.953 1.014-2.207-1.316-2.207-1.316-.753-.16-1.666-1.373-1.173-2.507.243-.56.587-.756.907-.768z" fill="#cd1e25"></path>
   </svg>
sprite m365 <svg width="32" height="32" viewBox="0 0 32 32">
    <path d="M25.925 25.583v-19.198c0-0.005 0-0.011 0-0.016 0-0.22-0.075-0.422-0.202-0.583l0.002 0.002c-0.133-0.166-0.314-0.289-0.521-0.348l-0.007-0.002-4.234-1.162q-0.496-0.139-0.992-0.287-0.496-0.146-0.992-0.27v24.593l6.218-1.783c0.215-0.059 0.396-0.183 0.526-0.348l0.002-0.002c0.125-0.158 0.201-0.36 0.201-0.579 0-0.006-0-0.012-0-0.018v0.001zM27.909 6.385v19.198c0 0.008 0 0.018 0 0.028 0 1.343-0.903 2.474-2.135 2.82l-0.021 0.005-8.607 2.467c-0.102 0.029-0.225 0.053-0.351 0.068l-0.012 0.001c-0.109 0.015-0.236 0.023-0.365 0.024h-0.001c-0.011 0-0.023 0-0.035 0-0.309 0-0.606-0.048-0.885-0.137l0.021 0.006c-0.316-0.108-0.587-0.231-0.843-0.377l0.023 0.012-5.63-3.179c-0.202-0.11-0.367-0.265-0.485-0.452l-0.003-0.005c-0.112-0.179-0.179-0.396-0.179-0.628 0-0.005 0-0.011 0-0.016v0.001c0-0.001 0-0.003 0-0.004 0-0.718 0.582-1.299 1.299-1.299 0.001 0 0.003 0 0.004 0h7.286v-17.709l-5.473 1.953c-0.446 0.156-0.813 0.443-1.065 0.815l-0.005 0.007c-0.252 0.357-0.402 0.801-0.402 1.28 0 0.002 0 0.005 0 0.008v-0 10.095c0 0.004 0 0.009 0 0.015 0 0.835-0.466 1.561-1.152 1.933l-0.012 0.006-2.589 1.412c-0.206 0.114-0.452 0.182-0.713 0.185h-0.001c-0.002 0-0.004 0-0.007 0-0.819 0-1.483-0.664-1.483-1.483 0-0.002 0-0.004 0-0.006v0-14.221c0.002-0.549 0.155-1.062 0.42-1.5l-0.007 0.013c0.262-0.462 0.633-0.836 1.078-1.093l0.014-0.007 9.244-5.257c0.192-0.107 0.414-0.197 0.647-0.258l0.020-0.004c0.214-0.059 0.459-0.093 0.712-0.094h0c0.007-0 0.015-0 0.023-0 0.16 0 0.316 0.014 0.468 0.041l-0.016-0.002c0.181 0.035 0.334 0.075 0.483 0.124l-0.028-0.008 8.608 2.373c1.254 0.362 2.156 1.499 2.156 2.847 0 0.002 0 0.004 0 0.007v-0z"></path>

</svg>


rectangle "platforms" {
card "<$aws> aws"
card "<$gcp> gcp"
card "<$azure> azure"
card "<$server-tower> bare metal"
card "<$redhat*.5> redhat"
card "<$ubuntu> ubuntu"
card "<$kubernetes> kubernetes"
card "<$vmware> vmware"
card "<$m365> m365"

}

rectangle combinations{
card "<$aws><$vmware*.7> vmw on aws"
card "<$azure><$vmware*.7> vmw on azure"
card "<$gcp><$vmware*.7> vmw engine for gcp"
card "<$server-tower><$windows*.7> bare metal windows"
card "<$server-tower><$ubuntu*.7> bare metal ubuntu"
card "<$server-tower><$windows*.7> bare metal windows"
card "<$server-tower><$kubernetes*.7> bare metal k8s"
card "<$server-tower><$vmware*.7> bare metal vmware"
card "<$server-tower><$vmware*.7>  <$windows*.4> windows on bare metal vmware"
}
@enduml





```
</details>

# Data Model Illustration

## JSON

<img src="https://github.com/user-attachments/assets/afd3da66-1406-4d8d-ad00-f3a1a85faa33" width=500>
<details>
  
<summary>Show Code</summary>
  
```puml
@startjson
title JSON
{
    "Microsoft" : {
        "O365" : "",

        "Power Platform" : "",
        "VSCode" : [
            "PlantUML",
            "Draw.io",
            "Mermaid"
        ]
    },
    "Miro" : [
            "PlantUML",
            "Draw.io",
            "Mermaid"
        ],
    "Atlassian" : [
        "Jira",
        "Confluence",
        "Align"
    ],
    "Adobe" : [
        "Figma",
        "FigJam"
    ]
}
@endjson
```

</details>

## YAML

<img src="https://github.com/user-attachments/assets/8c9df903-7291-4082-9117-c73fa8ba9ff4" width=500>
<details>
  
<summary>Show Code</summary>
  
```puml
@startyaml
title YAML
Microsoft:
  O365: ""
  Power Platform: ""
  VSCode:
  - PlantUML
  - Draw.io
  - Mermaid
Miro:
- PlantUML
- Draw.io
- Mermaid
Atlassian:
- Jira
- Confluence
- Align
Adobe:
- Figma
- FigJam
@endyaml
```

</details>

## Hierarchy
<img src="https://github.com/user-attachments/assets/30900eaa-2ea5-4369-8bf1-babea147444b" width=150>

<details>
  
<summary>Show Code</summary>
  
```puml
@startsalt
{
{T 
        + Item
        + Item
        ++ Item
        ++ Item
        +++ Item
        ++ Item
        + Item
        + Item
        ++ Item

    }
}
@endsalt
```

</details>

## Parse
<img src="https://github.com/user-attachments/assets/b877d12c-ae62-4583-9123-12345e801ac4" width=500>

<details>
  
<summary>Show Code</summary>
  
```puml
@startregex
title Regex Parsing

/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,63})$/
@endregex
```

</details>
