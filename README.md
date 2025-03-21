# GitHubCopilot-Mermaid_Estacio-2024-10
Conteúdos da apresentação "GitHub Copilot + Mermaid: simplificando a geração de documentações com Inteligência Artificial" realizada em 11/10/2024.

---

Título da apresentação: **GitHub Copilot + Mermaid: simplificando a geração de documentações com Inteligência Artificial**

Quando: **11/10/2024 (sexta-feira)**

Palestrante: Renato Groffe - **Microsoft MVP, MTAC**

Tipo do evento: **Online**

Ferramenta de transmissão: **Microsoft Teams**

Agradecimentos ao [**Prof. Mauricio Wieler Orellana**](https://www.linkedin.com/in/mauricio-wieler-orellana-3b578013a/) pelo convite e por todo o apoio na realização desta palestra, assim como a outros professores e alunos que estiveram presentes no evento.

Número de participantes: **55 pessoas (pico de audiência ao longo da live)**

Tecnologias e tópicos abordados: **GitHub Copilot, Mermaid, GitHub, Visual Studio Code, Git, SQL, UML, Modelagem de Sistemas, Autenticação Multifator...**

---

![Renato palestrando 1](img/audiencia.png)

![Renato palestrando 2](img/m-02.png)

![Renato palestrando 3](img/m-02.png)

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