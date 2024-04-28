- Nome do Projeto: C³ - Code Conecting Cultures
- Descrição: [Insira uma breve descrição do seu projeto]
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


- Liste os controladores do seu projeto e suas responsabilidades.
- Descreva as ações (methods) de cada controlador e seus parâmetros de entrada e saída.
- Explique como os controladores interagem com os modelos e views.

### Views (Views):
- Liste as views do seu projeto e sua função.

### Infraestrutura:

- Descreva os componentes de infraestrutura do seu projeto, como bancos de dados, APIs externas e outras dependências.
- Explique como a infraestrutura se integra à arquitetura MVC.


### Justifique as escolhas feitas e como elas impactam o projeto.
#### Implicações da Arquitetura:
Descreva as implicações da arquitetura em termos de escalabilidade, manutenção, testabilidade e outros aspectos importantes