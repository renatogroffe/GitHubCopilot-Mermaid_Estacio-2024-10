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

### Diagrama de sequência

Texto informado no GitHub Copilot Chat:

```txt
Gere para mim um diagrama de sequência que explique o processo de login no GitHub, incluindo o uso de autenticação multifator (MFA). O MFA no caso utiliza OTP (One-time password) e um autenticador que gera essas chaves. O ator no diagrama se chamará Desenvolvedor.
```

Resultado:

```mermaid
sequenceDiagram
    actor Desenvolvedor
    Desenvolvedor->>+GitHub: Envia credenciais de login (usuário e senha)
    GitHub->>GitHub: Verifica credenciais
    alt Credenciais válidas
        GitHub->>Desenvolvedor: Solicita OTP (One-time password)
        Autenticador->>Autenticador: Gera OTP
        Autenticador->>Desenvolvedor: Exibe OTP
        Desenvolvedor->>+GitHub: Envia OTP
        GitHub->>GitHub: Verifica OTP
        alt OTP válido
            GitHub->>Desenvolvedor: Login bem-sucedido
        else OTP inválido
            GitHub->>Desenvolvedor: Falha na autenticação
        end
    else Credenciais inválidas
        GitHub->>Desenvolvedor: Falha na autenticação
    end
```