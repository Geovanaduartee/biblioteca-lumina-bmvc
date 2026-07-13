import json
from pathlib import Path

from app.models.livro import Livro


class LivroRepository:
    def __init__(self):
        raiz_projeto = Path(__file__).resolve().parents[2]

        self.pasta_dados = raiz_projeto / "app" / "data"
        self.arquivo_dados = self.pasta_dados / "livros.json"

        self._preparar_arquivo()

    def _preparar_arquivo(self):
        self.pasta_dados.mkdir(parents=True, exist_ok=True)

        if not self.arquivo_dados.exists():
            self._salvar_dados([])

    def _carregar_dados(self):
        try:
            with self.arquivo_dados.open(
                "r",
                encoding="utf-8"
            ) as arquivo:
                dados = json.load(arquivo)

            if not isinstance(dados, list):
                return []

            return dados

        except (json.JSONDecodeError, OSError):
            return []

    def _salvar_dados(self, dados):
        with self.arquivo_dados.open(
            "w",
            encoding="utf-8"
        ) as arquivo:
            json.dump(
                dados,
                arquivo,
                ensure_ascii=False,
                indent=4
            )

    def listar(self):
        dados = self._carregar_dados()

        return [
            Livro.from_dict(item)
            for item in dados
        ]

    def buscar_por_id(self, livro_id):
        livros = self.listar()

        for livro in livros:
            if livro.id == livro_id:
                return livro

        return None

    def cadastrar(
        self,
        titulo,
        autor,
        categoria,
        ano,
        isbn,
        disponivel=True
    ):
        livros = self.listar()

        novo_id = self._gerar_proximo_id(livros)

        novo_livro = Livro(
            id=novo_id,
            titulo=titulo,
            autor=autor,
            categoria=categoria,
            ano=ano,
            isbn=isbn,
            disponivel=disponivel
        )

        livros.append(novo_livro)

        self._salvar_dados([
            livro.to_dict()
            for livro in livros
        ])

        return novo_livro

    def editar(
        self,
        livro_id,
        titulo,
        autor,
        categoria,
        ano,
        isbn,
        disponivel
    ):
        livros = self.listar()

        for livro in livros:
            if livro.id == livro_id:
                livro.titulo = titulo
                livro.autor = autor
                livro.categoria = categoria
                livro.ano = ano
                livro.isbn = isbn
                livro.disponivel = disponivel

                self._salvar_dados([
                    item.to_dict()
                    for item in livros
                ])

                return livro

        return None

    def excluir(self, livro_id):
        livros = self.listar()

        livros_restantes = [
            livro
            for livro in livros
            if livro.id != livro_id
        ]

        if len(livros_restantes) == len(livros):
            return False

        self._salvar_dados([
            livro.to_dict()
            for livro in livros_restantes
        ])

        return True

    def _gerar_proximo_id(self, livros):
        if not livros:
            return 1

        maior_id = max(
            livro.id
            for livro in livros
        )

        return maior_id + 1