PlantUML and Mermaid snippet repository for 
* [Diagram as Code](#diagram-as-code)
* [Data Model Illustration](#data-model-illustration)
* [UI Mockup](#UI-Mockup)

# Diagram as Code


## Graphs

<details>
  
<summary>Show Code</summary>
  
```puml

```

</details>

## Block
<details>
  
<summary>Show Code</summary>
  
```puml

```

</details>

# Data Model Illustration

## JSON
<details>
  
<summary>Show Code</summary>
  
```puml

```

</details>

## YAML
<details>
  
<summary>Show Code</summary>
  
```puml

```

</details>

## ERD


## Hierarchy
<img src="https://github.com/user-attachments/assets/30900eaa-2ea5-4369-8bf1-babea147444b" width=75>

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
<img src="https://github.com/user-attachments/assets/6f039b34-918f-437e-a152-2078656e23ff" width=500>
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
<img src="https://github.com/user-attachments/assets/1c1200e0-7ef2-4a0e-8206-f62e1f35948e" width=500>

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
<img src="https://github.com/user-attachments/assets/bca6d2d7-5fd2-4eb8-93ff-c79184c887e8" width=500>


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
<img src="https://github.com/user-attachments/assets/bca6d2d7-5fd2-4eb8-93ff-c79184c887e8" width=500>

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
<img src="https://github.com/user-attachments/assets/b342f98b-51ea-4dc3-af22-0116eb869a6d" width=500>


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
<img src="https://github.com/user-attachments/assets/7cdf7d83-9e89-4144-8dbd-eb813bb0557b" width=500>

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
<img src="https://github.com/user-attachments/assets/71f47d0d-a4a7-47a2-8bf0-a5989e6e7d65" width=500>


<details>
  
<summary>Show Code</summary>
  
```puml
@startsalt
{
{^==Widget
 Note on top
 <img:https://plantuml.com/logo3.png>
}|
    {^==Widget
note
 <img:https://plantuml.com/logo3.png>
}


{^==Widget
 second row first column
 <img:https://plantuml.com/logo3.png>
}|
  {^==Widget
 second row 2nd column
 <img:https://plantuml.com/logo3.png>
}
}

@endsalt
```

</details>

</details>
