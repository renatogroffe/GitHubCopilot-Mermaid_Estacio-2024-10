# GitHubCopilot-Mermaid_Estacio-2024-10
Conteúdos da apresentação "GitHub Copilot + Mermaid: simplificando a geração de documentações com Inteligência Artificial" realizada em 11/10/2024.

---

## Diagramas gerados durante a apresentação

### Diagrama de Entidade-Relacionamento

Estrutura com Regiões x Estados x Cidades:

```mermaid
erDiagram
    Regioes {
        int IdRegiao PK
        varchar CodRegiao
        varchar NomeRegiao
    }

    Estados {
        char SiglaEstado PK
        varchar NomeEstado
        varchar NomeCapital
        int IdRegiao FK
    }

    Cidades {
        int IdCidade PK
        varchar NomeCidade
        char SiglaEstado FK
    }

    Regioes ||--o{ Estados: contains
    Estados ||--o{ Cidades: contains
```
