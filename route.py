from bottle import Bottle, run, static_file

from app.controllers.application import Application
from app.controllers.livro_controller import LivroController


app = Bottle()

ctl = Application()
livro_ctl = LivroController()


# ---------------------------------------------------------
# Arquivos estáticos: CSS, JavaScript e imagens
# ---------------------------------------------------------

@app.route("/static/<filepath:path>")
def serve_static(filepath):
    return static_file(filepath, root="./app/static")


# ---------------------------------------------------------
# Rotas públicas
# ---------------------------------------------------------

@app.route("/")
def home():
    return ctl.render("home")


@app.route("/sobre")
def sobre():
    return ctl.render("sobre")


@app.route("/acervo")
def acervo():
    return livro_ctl.listar_acervo()


@app.route("/contato")
def contato():
    return ctl.render("contato")


@app.route("/helper")
def helper():
    return ctl.render("helper")


# ---------------------------------------------------------
# CRUD de livros — área administrativa
# ---------------------------------------------------------

@app.route("/admin/livros", method="GET")
def listar_livros():
    return livro_ctl.listar()


@app.route("/admin/livros/cadastrar", method="GET")
def exibir_cadastro_livro():
    return livro_ctl.exibir_cadastro()


@app.route("/admin/livros/cadastrar", method="POST")
def cadastrar_livro():
    return livro_ctl.cadastrar()


@app.route("/admin/livros/<livro_id:int>/editar", method="GET")
def exibir_edicao_livro(livro_id):
    return livro_ctl.exibir_edicao(livro_id)


@app.route("/admin/livros/<livro_id:int>/editar", method="POST")
def editar_livro(livro_id):
    return livro_ctl.editar(livro_id)


@app.route("/admin/livros/<livro_id:int>/excluir", method="POST")
def excluir_livro(livro_id):
    return livro_ctl.excluir(livro_id)


# ---------------------------------------------------------
# Inicialização do servidor
# ---------------------------------------------------------

if __name__ == "__main__":
    run(
        app,
        host="0.0.0.0",
        port=8080,
        debug=True,
        reloader=True
    )
