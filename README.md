PlantUML and Mermaid snippet repository for 
* [Simple Sprite Library](#simple-sprite-library)
* [Diagram as Code](#diagram-as-code)
* [Data Model Illustration](#data-model-illustration)
* [UI Mockup](#UI-Mockup)

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
