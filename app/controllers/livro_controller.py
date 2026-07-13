from bottle import redirect, request, template

from app.models.livro_repository import LivroRepository


class LivroController:
    def __init__(self):
        self.repository = LivroRepository()

    def listar(self):
        livros = self.repository.listar()

        return template(
            "app/views/html/admin_livros",
            livros=livros
        )

    def exibir_cadastro(self):
        return template(
            "app/views/html/form_livro",
            livro=None,
            erro=None,
            titulo_pagina="Cadastrar livro",
            acao="/admin/livros/cadastrar"
        )

    def cadastrar(self):
        dados, erro = self._ler_formulario()

        if erro:
            return template(
                "app/views/html/form_livro",
                livro=dados,
                erro=erro,
                titulo_pagina="Cadastrar livro",
                acao="/admin/livros/cadastrar"
            )

        self.repository.cadastrar(
            titulo=dados["titulo"],
            autor=dados["autor"],
            categoria=dados["categoria"],
            ano=dados["ano"],
            isbn=dados["isbn"],
            disponivel=dados["disponivel"]
        )

        redirect("/admin/livros")

    def exibir_edicao(self, livro_id):
        livro = self.repository.buscar_por_id(livro_id)

        if livro is None:
            redirect("/admin/livros")

        return template(
            "app/views/html/form_livro",
            livro=livro,
            erro=None,
            titulo_pagina="Editar livro",
            acao=f"/admin/livros/{livro_id}/editar"
        )

    def editar(self, livro_id):
        livro_existente = self.repository.buscar_por_id(livro_id)

        if livro_existente is None:
            redirect("/admin/livros")

        dados, erro = self._ler_formulario()

        if erro:
            dados["id"] = livro_id

            return template(
                "app/views/html/form_livro",
                livro=dados,
                erro=erro,
                titulo_pagina="Editar livro",
                acao=f"/admin/livros/{livro_id}/editar"
            )

        self.repository.editar(
            livro_id=livro_id,
            titulo=dados["titulo"],
            autor=dados["autor"],
            categoria=dados["categoria"],
            ano=dados["ano"],
            isbn=dados["isbn"],
            disponivel=dados["disponivel"]
        )

        redirect("/admin/livros")

    def excluir(self, livro_id):
        self.repository.excluir(livro_id)

        redirect("/admin/livros")

    def listar_acervo(self):
        livros = self.repository.listar()

        return template(
            "app/views/html/acervo",
            livros=livros
        )

    def _ler_formulario(self):
        titulo = request.forms.getunicode("titulo", "").strip()
        autor = request.forms.getunicode("autor", "").strip()
        categoria = request.forms.getunicode("categoria", "").strip()
        ano_texto = request.forms.getunicode("ano", "").strip()
        isbn = request.forms.getunicode("isbn", "").strip()

        disponivel = (
            request.forms.get("disponivel") == "on"
        )

        dados = {
            "titulo": titulo,
            "autor": autor,
            "categoria": categoria,
            "ano": ano_texto,
            "isbn": isbn,
            "disponivel": disponivel
        }

        if not titulo:
            return dados, "Informe o título do livro."

        if not autor:
            return dados, "Informe o autor do livro."

        if not categoria:
            return dados, "Informe a categoria do livro."

        if not ano_texto:
            return dados, "Informe o ano de publicação."

        try:
            ano = int(ano_texto)
        except ValueError:
            return dados, "O ano deve ser um número inteiro."

        if ano < 0 or ano > 2100:
            return dados, "Informe um ano válido."

        if not isbn:
            return dados, "Informe o ISBN do livro."

        dados["ano"] = ano

        return dados, None