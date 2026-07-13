# 📚 Biblioteca Lumina

Sistema web de gerenciamento de biblioteca desenvolvido em Python utilizando o framework Bottle e a arquitetura BMVC (Bottle Model View Controller).

---

# Sobre o projeto

A Biblioteca Lumina é uma aplicação web desenvolvida como projeto acadêmico para demonstrar a utilização da arquitetura BMVC no desenvolvimento de aplicações web em Python.

O projeto foi construído de forma incremental, sendo dividido em quatro níveis, onde cada etapa acrescenta novas funcionalidades à aplicação.

---

# Funcionalidades

## Nível 1

- Página Inicial
- Página Sobre
- Página Acervo
- Página Contato
- Pesquisa de livros
- Filtro por categoria
- Formulário de contato
- Layout responsivo
- Interface personalizada

---

## Nível 2

- CRUD completo de livros
- Cadastro de livros
- Listagem de livros
- Edição de livros
- Exclusão de livros
- Modelo Python (Livro)
- Persistência de dados em arquivo JSON

---

## Nível 3

- Login
- Logout
- Controle de acesso
- Área administrativa protegida
- Validação de usuário e senha

---

## Nível 4

- Comunicação em tempo real utilizando WebSocket
- Socket.IO
- Eventlet
- Envio de avisos em tempo real
- Atualização simultânea entre múltiplos navegadores

---

# Tecnologias utilizadas

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

# Estrutura do projeto

```text
app/
├── controllers/
├── models/
├── views/
├── static/
├── data/
└── route.py
```

---

# Como executar

Instale as dependências:

```bash
python -m pip install bottle python-socketio eventlet
```

Execute o projeto:

```bash
python route.py
```

Depois acesse:

```text
http://localhost:8080
```

---

# Organização das branches

- **main** → versão final do projeto.
- **nivel-1** → desenvolvimento do Nível 1.
- **nivel-2** → desenvolvimento do Nível 2.
- **nivel-3** → desenvolvimento do Nível 3.
- **nivel-4** → desenvolvimento do Nível 4.

---

# Desenvolvedoras

- Geovana Duarte
- Giovanna Santos

---

# Status do projeto

✅ Projeto concluído.

---

Projeto desenvolvido para a disciplina de Programação Orientada a Objetos utilizando Python, Bottle e arquitetura BMVC.
