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