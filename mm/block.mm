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
