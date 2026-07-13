# 📚 Biblioteca Lumina

Sistema web de biblioteca desenvolvido em Python utilizando o framework Bottle e a arquitetura BMVC (Bottle Model View Controller).

---

# Nível 4 – Comunicação em Tempo Real com WebSocket

Este projeto foi desenvolvido para a Macro Tarefa BMVC.

Neste nível foram mantidas todas as funcionalidades dos níveis anteriores e foi implementada a comunicação em tempo real utilizando WebSocket com Socket.IO e Eventlet.

---

## Funcionalidades

### Funcionalidades dos níveis anteriores

- Página Inicial
- Página Sobre
- Página Acervo
- Página Contato
- Pesquisa de livros
- Filtro por categoria
- Formulário de contato
- Menu responsivo
- Interface personalizada
- Cadastro de livros
- Listagem de livros
- Edição de livros
- Exclusão de livros
- Persistência de dados em arquivo JSON
- Login
- Logout
- Controle de acesso
- Área administrativa protegida

### Funcionalidades adicionadas no Nível 4

- Comunicação em tempo real utilizando WebSocket
- Envio de avisos em tempo real
- Atualização simultânea em múltiplas abas do navegador
- Página exclusiva para demonstração da comunicação em tempo real
- Integração entre Bottle e Socket.IO
- Servidor utilizando Eventlet

---

## Dados de acesso

Usuário:

```text
admin
```

Senha:

```text
123
```

---

## CRUD implementado

### Create

Cadastro de novos livros.

### Read

Visualização da lista de livros cadastrados.

### Update

Edição das informações dos livros.

### Delete

Exclusão de livros do acervo.

---

## Comunicação em tempo real

O sistema possui uma página destinada ao envio de avisos em tempo real.

Quando um aviso é enviado por um usuário autenticado, todas as páginas conectadas recebem imediatamente a nova mensagem, sem necessidade de atualizar o navegador.

Esta funcionalidade foi implementada utilizando WebSocket através das bibliotecas Socket.IO e Eventlet.

---

## Modelo utilizado

Modelo principal:

- Livro

Campos do modelo:

- ID
- Título
- Autor
- Categoria
- Ano
- ISBN
- Disponibilidade

---

## Tecnologias utilizadas

- Python
- Bottle
- BMVC
- HTML5
- CSS3
- JavaScript
- Bootstrap 5
- JSON
- Socket.IO
- Eventlet
- WebSocket

---

## Estrutura do projeto

```text
app/
├── controllers/
│   ├── application.py
│   ├── livro_controller.py
│   └── login_controller.py
│
├── models/
│   ├── livro.py
│   └── livro_repository.py
│
├── data/
│   └── livros.json
│
├── static/
│   ├── css/
│   ├── img/
│   └── js/
│       ├── script.js
│       └── tempo_real.js
│
└── views/
    └── html/
        ├── login.tpl
        ├── admin_livros.tpl
        └── tempo_real.tpl
```

---

## Como executar

Instale as dependências:

```bash
python -m pip install bottle python-socketio eventlet
```

Execute o servidor:

```bash
python route.py
```

Depois acesse:

```text
http://localhost:8080
```

Página de login:

```text
http://localhost:8080/login
```

Área administrativa:

```text
http://localhost:8080/admin/livros
```

Página de comunicação em tempo real:

```text
http://localhost:8080/tempo-real
```

---

## Como testar a comunicação em tempo real

1. Faça login utilizando as credenciais de demonstração.
2. Abra a página **Avisos em Tempo Real**.
3. Abra essa mesma página em duas abas do navegador.
4. Digite um aviso em uma das abas.
5. Clique em **Enviar**.
6. A mensagem aparecerá imediatamente nas duas abas, demonstrando a comunicação em tempo real utilizando WebSocket.

---

## Objetivo do Nível 4

Neste nível foi implementada uma funcionalidade de comunicação em tempo real utilizando WebSocket.

O sistema permite que avisos enviados por um usuário autenticado sejam recebidos instantaneamente por todos os clientes conectados, sem necessidade de recarregar a página.

---

## Desenvolvedoras

- Geovana Duarte
- Giovanna Santos

---

Projeto desenvolvido para a disciplina utilizando Python, Bottle e arquitetura BMVC.
