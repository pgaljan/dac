graph LR

subgraph Authoring
    Miro
    FigJam
    O365
    Confluence
end

subgraph Systems of Record
    Jira
    Figma
end

subgraph Reporting
    Power[Power Platform]
    JiraReport[Jira Reporting]
end

Confluence --> Jira
O365 --> Jira
Miro --> Figma
Miro --> Jira
FigJam --> Figma
Figma --> Jira

Jira --> JiraReport
JiraReport --> Power
