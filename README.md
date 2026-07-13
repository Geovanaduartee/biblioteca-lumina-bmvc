# 📚 Biblioteca Lumina

Sistema web de biblioteca desenvolvido em Python utilizando o framework Bottle e a arquitetura BMVC (Bottle Model View Controller).

---

# Nível 2 – CRUD de Livros

Este projeto foi desenvolvido para a Macro Tarefa BMVC.

Neste nível foi implementado um sistema completo de gerenciamento do acervo da biblioteca através de um CRUD (Create, Read, Update e Delete), utilizando um modelo Python e persistência de dados em arquivo JSON.

---

## Funcionalidades

### Funcionalidades do Nível 1

- Página Inicial
- Página Sobre
- Página Acervo
- Página Contato
- Pesquisa de livros
- Filtro por categoria
- Formulário de contato
- Menu responsivo
- Interface personalizada

### Funcionalidades adicionadas no Nível 2

- Cadastro de livros
- Listagem de livros
- Edição de livros
- Exclusão de livros
- Área administrativa
- Modelo Python (Livro)
- Persistência de dados em arquivo JSON
- Atualização automática da lista de livros

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
│   └── livro_controller.py
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

Área administrativa:

```text
http://localhost:8080/admin/livros
```

---

## Objetivo do Nível 2

Neste nível foi desenvolvido um sistema CRUD para gerenciamento do acervo da biblioteca.

A aplicação permite cadastrar, listar, editar e excluir livros, utilizando a arquitetura BMVC e persistindo os dados em arquivo JSON.

---

## Desenvolvedoras

- Geovana Duarte
- Giovanna Santos

---

## Status

✅ Nível 2 concluído.

---

Projeto desenvolvido para a disciplina utilizando Python, Bottle e arquitetura BMVC.
