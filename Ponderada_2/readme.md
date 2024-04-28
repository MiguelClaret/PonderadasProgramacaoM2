- Nome do Projeto: C³ - Code Conecting Cultures
- Descrição: Uma plataforma web, a qual será utilizada para gerir problemas culturais, diferenças de fuso horário e comunicação entre os membros dos grupos no jogo, por meio abas onde o usuário consegue acessar o perfil de cada integrante do seu grupo, e com isso entender o contexto que cada um vive, e também abas onde o usuário conseguirá avaliar o desempenho dos seus colegas de equipe.
- Arquitetura: MVC (Model-View-Controller)
- Ferramenta de Diagramação: draw.io e canva

<div align="center">
<sub>Arquiterura MVC em Sails</sub>
<img src="./Servidor Banco de Dados.png" width="100%">
<sup>Fonte: Material produzido pelos autores (2024)</sup>
</div>

### Modelos (Models):
As entidades, e seus atributos, presentes nessa arquitetura são:
 - User
    - id, type, name, email, password, group_id, birthday, country_pov, country_of_birth e gender.
 - Group
    - id, name, user_id e tutor_id.
 - Feedback
    - id, content, from_user_id, to_user_id e group_id.

### Controladores (Controllers):
Os controladores desse projeto são:
 - User Controller
    - Responsabilidades:
        - Encarregado de cuidar de toda a ação com o usuário
    - Ações:
        - Create: Criação de um novo usuário
            - Entrada: User(todos os dados do novo usuário)
            - Saída: Novo usuário cadastrado no site 
        - Read: Ver as informações daquele usuário
            - Entrada: Id do perfil que que ver
            - Saída: Informações do perfil daquele usuário
        - Update: Atualizar as informações de perfil do usuário
            - Entrada: Informações a serem atualizadas
            - Saída: Perfil com as alterações
        - Delete: Desligar o perfil do usuário
            - Entrada: informações do usuário
            - Saída: Perfil excluído
 - Group Controller
    - Responsabilidades:
        - Encarregado por cuidar de toda a ação com os grupos
    - Ações:
        - Create: Criação de um novo grupo
            - Entrada: Informações de todos os usuário desse novo grupo
            - Saída: Novo grupo cadastrado no site
        - Read: Ver as informações do grupo, como integrantes
            - Entrada: Id do grupo que quer ver
            - Saída: Informações do grupo
        - Update: Atualizar as informações do grupo
            - Entrada: Informações a serem alteradas
            - Saída: Grupo com as informações alteradas
        - Delete: Desligar o grupo
            - Entrada: Informações do grupo
            - Saída: Grupo excluído
 - Feedback Controller
    - Responsabilidades:
        - Encarregado por cuidar de toda ação em relação as avaliações
    - Ações
        - Create: Criação de uma nova avaliação
            - Entrada: Informações sobre a avaliação
            - Saída: Resultados da avaliação
        - Read: Ver os resultados da avaliação
            - Entrada: id da avaliação
            - Saída: Resultado da avaliação
        - Update: Atualizar as avaliações
            - Entrada: id da avaliação
            - Saída: Avaliação com as informações atualizadas
        - Delete: Retirar o Feedback
            - Entrada: Id da avaliação
            - Saída: Feedback excluído.


### Views (Views):
 As views presente no projeto são:
 - Homepage:
    - navbar
    - profiles
    - group_members
    - game_info
    - game_indicators
    - logo
 - Feedback
    - form_questions
    - submit
    - my_feedbacks
    - logo

### Infraestrutura:

Banco de dados SQL, hospedado no render, utilizando a ferramenta DBeaver para manjeno das informações. Sendo essa banco de dados ligado à arquitetura MVC, por meio dos Models

### Justifique as escolhas feitas e como elas impactam o projeto.
#### Implicações da Arquitetura:
Ao utilizar a arquitetura MVC ela traz diversos benefícios, como:
- Reutilização de códigos.
- Facilidade na manutenção, pois há uma divisão específica para cada funcionalidade, tornando-a mais fácil de ser mantida.
- Testabilidade, pois a divisão em partes específicas facilita os testes, permitindo testar cada parte separadamente.