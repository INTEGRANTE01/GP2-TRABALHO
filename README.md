# Projeto Gp2

## Para rodar o projeto

### Para fazer clone.

`git clone https://github.com/INTEGRANTE01/GP2-TRABALHO.git`

### Para rodar com o Tomcat.

`mvnw tomcat7:run`

Para rodar com o Tomcat ignorando as configurações do plugin no `pom.xml`.

`mvnw org.apache.tomcat.maven:tomcat7-maven-plugin:run`

## Para acessar a aplicação

`http://localhost:9090/endemias` em qualquer navegador.

## Banco de Dados

A aplicação exige instalação prévia no MySQL e o arquivo de conexão com o banco de dados está em: `GP-TRABALHO\src\main\java\model\ConectaBanco.java`

O script de banco de dados populado está em: `GP2-TRABALHO\src\main\webapp\bd\dbendemic2.sql`
