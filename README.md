PlantUML and Mermaid snippet repository for 
* [Diagram as Code](#diagram-as-code)
* [Data Model Illustration](#data-model-illustration)
* [UI Mockup](#UI-Mockup)

# Diagram as Code
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

## Graph

```mermaid
graph LR

subgraph Group 1
    Item1
    Item2
    Item3
    Item4
end

subgraph Group 2
    Item5
    Item6
end

subgraph Group 3
    Item7
    Item8
end

Item4 --> Item5
Item3 --> Item5
Item1 --> Item6
Item1 --> Item5
Item2 --> Item6
Item6 --> Item5

Item5 --> Item8
Item8 --> Item7
```

<details>
  
<summary>Show Code</summary>
  
```
graph LR

subgraph Group 1
    Item1
    Item2
    Item3
    Item4
end

subgraph Group 2
    Item5
    Item6
end

subgraph Group 3
    Item7
    Item8
end

Item4 --> Item5
Item3 --> Item5
Item1 --> Item6
Item1 --> Item5
Item2 --> Item6
Item6 --> Item5

Item5 --> Item8
Item8 --> Item7
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

## ERD


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

# UI Mockup

## All Together
<img src="https://github.com/user-attachments/assets/2a41cf2d-389e-45d2-b2db-066cf090eeb3" width=500>


## Components 
  
<details>
  

  <summary>Show Components</summary>

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
  {🔁 |
  🔃  |
  📶 |
  🔀 |
  🔂 |
  🔄   }
  {🔓 |
  🔒 |
  🔑}
  {🔔 |
  🔕}
  }
```
@endsalt
  
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
