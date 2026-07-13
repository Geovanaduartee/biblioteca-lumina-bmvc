class Livro:
    def __init__(
        self,
        id,
        titulo,
        autor,
        categoria,
        ano,
        isbn,
        disponivel=True
    ):
        self.id = id
        self.titulo = titulo
        self.autor = autor
        self.categoria = categoria
        self.ano = ano
        self.isbn = isbn
        self.disponivel = disponivel

    def to_dict(self):
        return {
            "id": self.id,
            "titulo": self.titulo,
            "autor": self.autor,
            "categoria": self.categoria,
            "ano": self.ano,
            "isbn": self.isbn,
            "disponivel": self.disponivel
        }

    @classmethod
    def from_dict(cls, dados):
        return cls(
            id=dados["id"],
            titulo=dados["titulo"],
            autor=dados["autor"],
            categoria=dados["categoria"],
            ano=dados["ano"],
            isbn=dados["isbn"],
            disponivel=dados.get("disponivel", True)
        )