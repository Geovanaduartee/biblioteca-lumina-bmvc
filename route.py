import eventlet
import socketio

from bottle import Bottle, static_file

from app.controllers.application import Application
from app.controllers.livro_controller import LivroController
from app.controllers.login_controller import LoginController


# ---------------------------------------------------------
# Aplicações Bottle e Socket.IO
# ---------------------------------------------------------

app = Bottle()

sio = socketio.Server(
    async_mode="eventlet",
    cors_allowed_origins="*"
)

aplicacao_socket = socketio.WSGIApp(
    sio,
    app
)


ctl = Application()
livro_ctl = LivroController()
login_ctl = LoginController()


# ---------------------------------------------------------
# Eventos Socket.IO
# ---------------------------------------------------------

@sio.event
def connect(sid, environ):
    print(f"Cliente conectado: {sid}")


@sio.event
def disconnect(sid):
    print(f"Cliente desconectado: {sid}")


@sio.on("enviar_aviso")
def receber_aviso(sid, dados):
    mensagem = str(dados.get("mensagem", "")).strip()

    if not mensagem:
        return

    sio.emit(
        "novo_aviso",
        {
            "mensagem": mensagem
        }
    )


# ---------------------------------------------------------
# Arquivos estáticos
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


@app.route("/tempo-real")
def tempo_real():
    login_ctl.exigir_login()
    return ctl.render("tempo_real")


# ---------------------------------------------------------
# Login e logout
# ---------------------------------------------------------

@app.route("/login", method="GET")
def exibir_login():
    return login_ctl.exibir_login()


@app.route("/login", method="POST")
def autenticar():
    return login_ctl.autenticar()


@app.route("/logout", method="GET")
def logout():
    return login_ctl.logout()


# ---------------------------------------------------------
# CRUD de livros
# ---------------------------------------------------------

@app.route("/admin/livros", method="GET")
def listar_livros():
    login_ctl.exigir_login()
    return livro_ctl.listar()


@app.route("/admin/livros/cadastrar", method="GET")
def exibir_cadastro_livro():
    login_ctl.exigir_login()
    return livro_ctl.exibir_cadastro()


@app.route("/admin/livros/cadastrar", method="POST")
def cadastrar_livro():
    login_ctl.exigir_login()
    return livro_ctl.cadastrar()


@app.route("/admin/livros/<livro_id:int>/editar", method="GET")
def exibir_edicao_livro(livro_id):
    login_ctl.exigir_login()
    return livro_ctl.exibir_edicao(livro_id)


@app.route("/admin/livros/<livro_id:int>/editar", method="POST")
def editar_livro(livro_id):
    login_ctl.exigir_login()
    return livro_ctl.editar(livro_id)


@app.route("/admin/livros/<livro_id:int>/excluir", method="POST")
def excluir_livro(livro_id):
    login_ctl.exigir_login()
    return livro_ctl.excluir(livro_id)


# ---------------------------------------------------------
# Inicialização do servidor
# ---------------------------------------------------------

if __name__ == "__main__":
    print("Servidor iniciado em http://localhost:8080")

    eventlet.wsgi.server(
        eventlet.listen(("0.0.0.0", 8080)),
        aplicacao_socket
    )