# 📚 Biblioteca Lumina

Sistema web de biblioteca desenvolvido em Python com o framework Bottle e a arquitetura BMVC.

## Sobre o projeto

A Biblioteca Lumina é uma aplicação web criada para apresentar e gerenciar o acervo de uma biblioteca.

O projeto foi desenvolvido de forma progressiva em quatro níveis:

- Nível 1: páginas web estáticas e personalizadas
- Nível 2: CRUD completo com modelos Python
- Nível 3: controle de acesso com login e páginas restritas
- Nível 4: comunicação em tempo real com WebSocket

## Funcionalidades do Nível 1

- Página inicial
- Página sobre a biblioteca
- Página de acervo
- Página de contato
- Pesquisa por título ou autor
- Filtro por categoria
- Formulário com confirmação em JavaScript
- Menu responsivo
- Logo personalizado
- Favicon
- Layout responsivo
- CSS e JavaScript próprios

## Tecnologias utilizadas

- Python
- Bottle
- BMVC
- HTML5
- CSS3
- JavaScript
- Bootstrap 5

## Estrutura do projeto

```text
app/
├── controllers/
├── models/
├── static/
│   ├── css/
│   ├── img/
│   └── js/
└── views/
    └── html/
```

## Como executar

Na raiz do projeto, instale o Bottle:

```bash
python -m pip install bottle
```

Execute o servidor:

```bash
python route.py
```

Depois, acesse:

```text
http://localhost:8080
```

## Branches

- `main`: versão principal
- `nivel-1`: versão final do Nível 1
- `nivel-2`: desenvolvimento do CRUD
- `nivel-3`: será utilizada para login e controle de acesso
- `nivel-4`: será utilizada para WebSocket

## Autora

Geovana Duarte

## Projeto acadêmico

Projeto desenvolvido para a Macro Tarefa BMVC.