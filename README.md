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

### Dashboard Layout
<img src="https://github.com/user-attachments/assets/d74c4c3d-d825-4cd6-87c9-ddedfcfea729" width=200>

<details>
  
<summary>Show Code</summary>
  
```puml
@startsalt
{
{^==Widget
bubble
 <img:https://media-hosting.imagekit.io//2fae303bfcd749b1/bubble.png?Expires=1835783351&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=R9rOY~vKp8NgMyi9KL4dG9EMWjEfCtGpIVQaY-AFBdCb4L2NyY3l12X4wSK2aLEftWWOj~ypPhJ5xMUBwS0Mxn0MCYOC1dTmC210kE8HRaJwJu9f~NITkVuMeBkDp1IoAOMrodcPnrCwut6jU~DM1GcJ4olamzeugrbKSpl9GO83J4mpBXICWY5IrjU2xPwl9nwr31KCZi3KLByDAuuSEOQEJeDqDQlPFOhN~7yiq~GGdViUIUKjS4LF7XWWjWVUFDdAQMKOMXZ0ADxcy~cDZxGslA9ASzTEHshKCQkLc8CX3YDLEenWE0rwrdojLuYNRll7co2p-3gIltyOwMb89Q__>
}|
    {^==Widget
map                                                              
 <img:https://media-hosting.imagekit.io//40e6acba9f28472d/map.png?Expires=1835783351&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=mbaxRyIWOgYu06oXfgOwfeXjMGy5vh8YeafxPOa1V76reCjtvfnff0FXapR5P4gmSR~0FB4z0W5nI6pvC35t9nAzRYV8swNkA9Q-dQ39qRsak3zXtbT2ANQxFdb-FoMvjdZ5F9sv68uJuwxS~PRJXcy0jxZNm-Aovf9G~GRX4dgpJlsIcyFarEOHViv9AbsOqNQR9r~Ird-K9NT2B0uU9RtQa1yfQ0xTohRiYx3QwFZyRiTRD2vFBxn0PLRJmiOqcGmqwFe5UJUGtydHLgrrDYtDEn~e2qi7tQ1LLuW9qZctqXjMy2~IHO6164T8Z9DcOrHnXZlecawWT6hvhadnlw__>
 { }
}


{^==Widget
 scatter
 <img:https://media-hosting.imagekit.io//1b34e00a65c340ac/scatter.png?Expires=1835783351&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=WCU2FX1sKinyW48QYnHhRg0R-i7PmraHlEnShOiNx4jRXcQLG-tZRfht7uhX2kBuMoDaIM7-3HNQ4doiYalCr~MhAzUKIGv~7~KMf9jYlJVHdKha3sns4XxJVdM2-LkP40qObgSpbyqxcJ-PATz1HfEW2-nyYL99Aqg3aQy-zv9T9FBFdJAyBhpV9pXNifIEP67iZxmHu3IDTPxh2ia2lQpObNwm8iMDKzI1foOMUFmS4x5j81QWVPJMbC8s~1Ig6rRocy5ajvjyE1fvOlcwFuB0GpWsMr-sY9RCliE0nLOkR2Boj5gfa4zTdPOSJhmt9mtcT9ReEzBVWffU1Kx0Qw__>
}|
  {^==Widget
 veritcal bar
 <img:https://media-hosting.imagekit.io//1145c82bd7b34aab/vbar.png?Expires=1835783351&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=wroDe8AuqIJoSLOTL3k48syBnuheI1FxhE07b15nDKcaO8kY0LaYHrYJEaG5GCPcu5dLK-q689azjvXowaT~IY29jdNzSDzGpswStQjGQrwRWybrQW2vz2qZRpVc4gjnjEUPM6bv-NtdoqM3vOiqnXnxkcS44EBvSn2zqE-cTui45ohd6Vfo4hvfi3unfDgxHgZvBILyUZBB9NbfaBb~LCv9oMaTO891YUQURHSlXGp-HJBszqB0XDhqKH4aeofApdMP-9ywHVv0d6lw0KTAtAA-0EJ~UNM5KC2bSkrpx7CqfQAWQfUtWb3ZobigcD8GGSzKmaMQorutrACRlojSeg__>
}
{^==Widget
 horizontal bar
 <img:https://media-hosting.imagekit.io//44b5f9e84ae84c53/hbar.png?Expires=1835783351&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=UI0CRln6ypdfyFj8ejABctX95NxtXMypZgrImH7XvU5rZhY6sWLya0twzX-Vbc8-BHU1PIo1VuJdOew8SNQA0TfUPgh~wuWcCsvdAhiDQwc7w1WEcqwFgbz3elFY4VwBE-gc2JT4HiZNg~OKVy~ef2sj87JcbwTFq5hqajCr-lT6xjdEq-DT18TLrSIyv-Vd3zYyTBxVUjCrT4q-6E-i7i5wmZefEkL1BuUMWFTtx6p-v4wmUnTrGgebey1Ewa8T5JBdodQNEr36uy56dNVEbiuR3LivSDAMPxJL5Y6hqKThen0~9ONL1RjLqA~b70NbG27iI1KBm1kM9rMXPKMEhQ__>
}|
  {^==Widget
 line
 <img:https://media-hosting.imagekit.io//eddc2729329f4227/line.png?Expires=1835783351&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=y4EFY~mkx2CmjM~7iS-~xY6DqTnCTzOxOaIQezROnM-W5Cg40qYZAnv-yvN7Ec0-diOym3Ff5FHFMyyWL4DQ5vpLz~zlETEFKojq9TS7SsO3WHFkLe7B88M~OC02LxdmgTVlGDs0V2lvEHkHFwkbjl7d72hjvKv6-AIFlF78LHkoOKj8aBTYpHn20zheYaRBl9ms6mMacaRVEluVoJTSkJtLm994Ww9xUMtps9FJVn6hmeaqCWXUEW52r9Zv-Co15po2KttzdQH1yjP7zEOeU9-z-Zo8mwM0MtVbYJhwVzyV9hB5Ikd9TLMo0T8tGgdJAPb18606Oq8-3-jPvnWkcw__>
}
}

@endsalt

```

</details>

</details>
