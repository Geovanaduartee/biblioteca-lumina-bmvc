# 📚 Biblioteca Lumina

Sistema web de biblioteca desenvolvido em Python utilizando o framework Bottle e a arquitetura BMVC (Bottle Model View Controller).

---

# Nível 3 – Login e Controle de Acesso

Este projeto foi desenvolvido para a Macro Tarefa BMVC.

Neste nível foram mantidas todas as funcionalidades dos níveis anteriores e foi implementado um sistema de autenticação para proteger a área administrativa da aplicação.

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

### Funcionalidades adicionadas no Nível 3

- Tela de Login
- Validação de usuário e senha
- Controle de acesso
- Área administrativa protegida
- Logout
- Redirecionamento automático para login quando o usuário não está autenticado

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
│
└── views/
    └── html/
```

---

## Como executar

Instale o Bottle:

```bash
python -m pip install bottle
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

---

## Objetivo do Nível 3

Neste nível foi implementado um sistema de autenticação utilizando login e senha para controlar o acesso à área administrativa da biblioteca.

Somente usuários autenticados podem acessar o gerenciamento do acervo, garantindo maior segurança para as operações de cadastro, edição e exclusão de livros.

---

## Desenvolvedoras

- Geovana Duarte
- Giovanna Santos

---

## Status

✅ Nível 3 concluído.

---

Projeto desenvolvido para a disciplina utilizando Python, Bottle e arquitetura BMVC.
