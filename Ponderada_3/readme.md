# Ponderada Semana 3 - Modelagem de Banco de Dados

- <strong>Nome do Projeto</strong>: C³ - Code Conecting Cultures
 - <strong>Descrição</strong>: Uma plataforma web, a qual será utilizada para gerir problemas culturais, diferenças de fuso horário e comunicação entre os membros dos grupos no jogo, por meio abas onde o usuário consegue acessar o perfil de cada integrante do seu grupo, e com isso entender o contexto que cada um vive, e também abas onde o usuário conseguirá avaliar o desempenho dos seus colegas de equipe.

 Segue abaixo o modelo relacional do banco de dados:

 <div align="center">
<sub>Modelo Relacional do Banco de Dados</sub>
<img src="imageBancoDeDados.png" width="100%">
<sup>Fonte: Material produzido pelo autor (2024)</sup>
</div>


### Tabela: `user`
 - id(INT): Chave Primária
 - name(TEXT)
 - birthday(DATA)
 - country(TEXT)
 - pronouns(TEXT)
 - email(TEXT)
 - password(TEXT)
 - university(TEXT)

 ### Tabela: `tutor`
 - id(INT): Chave Primária
 - user_id(INT): Chave estrangeira ligada à user(id)

 ### Tabela: `student`
 - id(INT): Chave Primária
 - user_id(INT): Chave estrangeira ligada à user(id)
 - happiness_meter(INT)
 - profile_type(TEXT)
 - profile_photo_svg(TEXT)

 ### Tabela: `team`
 - id(INT): Chave Primária
 - name(TEXT)
 - tutor_id(INT): Chave estrangeira ligada à tutor(id)
 - student_id(INT): Chave estrangeira ligada à student(id)

  ### Tabela: `questionAnswer`
 - id(INT): Chave Primária
 - student_id(INT): Chave estrangeira ligada à student(id)
 - question_id(INT): Chave estrangeira ligada à question(id)
 - question_answer(TEXT)
 - date(DATE)

  ### Tabela: `question`
 - id(INT): Chave Primária
 - question_text(TEXT)
 - alternatives(TEXT)
 - question_type(TEXT)


  ### Tabela: `message`
 - id(INT): Chave Primária
 - content(TEXT)
 - student_id(INT): Chave estrangeira ligada à student(id)
 - date(DATE)

 ## Relacionamentos:
 As relações cardinais referem-se à forma como as tabelas se relacionam umas com as outras, especificando quantos registros de uma tabela podem estar associados a quantos registros de outra tabela, segue abaixo a análise de relações do banco de dados:
 
 ### `user`
 - `tutor`: 1:1, pois cada usuário pode ser associado a apenas um tutor e vice-versa.
 - `student`: 1:1, pois cada usuário pode ser associado a apenas um estudante e vice-versa.
 - `questionAnswer`: 1:N, pois um usuário pode ter várias perguntas, mas cada resposta é associada a apenas um usuário.
 - `message`: 1:N, pois cada usuário pode enviar várias mensagens, mas cada mensagem é associada apenas a um usuário.

### `tutor`
 - `team`: 1:N,pois um tutor pode estar associado a vários times, mas um time só pode estar associada a um tutor.

### `student`
- `team`: 1:N, pois um estudante pode estar associados a apenas um time, mas um time está associado a vários estudantes.

### `questionAnswer`
- `question`: N:1, pois uma pergunta pode ter várias respostas, mas cada resposta é associada apenas a uma pergunta.
