## Gerenciamento de estoque

Este projeto é um sistema de gerenciamento desenvolvido em Java, que permite realizar as principais operações de CRUD (Criar, Ler, Atualizar e Deletar) de forma simples e eficiente. 
O sistema foi projetado para facilitar a gestão de dados e proporcionar uma experiência amigável ao usuário, por meio de uma interface web funcional e intuitiva.

### Funcionalidades: 

- Listar: Exibe todos os registros cadastrados de forma organizada.
- Cadastrar: Permite adicionar novos registros ao sistema.
- Alterar: Facilita a atualização de dados já existentes.
- Excluir: Remove registros indesejados ou obsoletos.
- Consultar: Realiza buscas precisas com base no ID do registro.

### Modo de uso:

- Escolha a opção desejada na página inicial.
- Siga as instruções na tela (ex.: preencha campos ou insira o ID).
- Confirme as ações para concluir.
#### - Exemplo: Cadastre um produto (ex.: "Camiseta, Adidas, R$90.99"), confirme o ID do produto pela lista, consulte pelo ID para conferir, altere algum dado se necessário e, se quiser, exclua.

### Instruções de criação para o banco de dados:

CREATE DATABASE banco;

USE banco;

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `preco` double NOT NULL,
  `marca` varchar(20) NOT NULL
);

### Tela Inicial:

<div>
  <img src="https://github.com/Yumi-giuliA/ProjetoJavaSite/blob/master/TelaInicial.jpeg?raw=true" width="500px"/>
</div> 

### Lista:

<div>
  <img src="https://github.com/Yumi-giuliA/ProjetoJavaSite/blob/master/Lista.png?raw=true" width="500px"/>
</div>

### Cadastrar:

<div>
  <img src="https://github.com/Yumi-giuliA/ProjetoJavaSite/blob/master/Cadastrar.png?raw=true" width="500px"/>
</div>

### Consultar e seu resultado:

<div>
  <img src="https://github.com/Yumi-giuliA/ProjetoJavaSite/blob/master/Consultar.jpeg?raw=true" width="500px"/>
</div><br>
<div>
  <img src="https://github.com/Yumi-giuliA/ProjetoJavaSite/blob/master/ResultadoConsultar.png?raw=true" width="500px"/>
</div>

### Alterar e seu resultado:

<div>
  <img src="https://github.com/Yumi-giuliA/ProjetoJavaSite/blob/master/Editar.jpeg?raw=true" width="500px"/>
</div><br>
<div>
  <img src="https://github.com/Yumi-giuliA/ProjetoJavaSite/blob/master/ResultadoEditar.png?raw=true" width="500px"/>
</div>

### Excluir:

<div>
  <img src="https://github.com/Yumi-giuliA/ProjetoJavaSite/blob/master/Excluir.jpeg?raw=true" width="500px"/>
</div>

### Tecnologias usadas:

<div style="display: inline_block"><br>
  <img align="center" alt="Java" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/java/java-original.svg"> 
  <img align="center" alt="HTML" height="30" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original.svg">
  <img align="center" alt="CSS" height="30" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original.svg">
  <img align="center" alt="MySQL" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/mysql/mysql-original-wordmark.svg" />
</div>
