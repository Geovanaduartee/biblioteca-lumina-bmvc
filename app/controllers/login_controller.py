from bottle import redirect, request, response, template


class LoginController:
    USUARIO = "admin"
    SENHA = "123"

    def exibir_login(self, erro=None):
        return template(
            "app/views/html/login",
            erro=erro
        )

    def autenticar(self):
        usuario = request.forms.getunicode("usuario", "").strip()
        senha = request.forms.getunicode("senha", "").strip()

        if usuario == self.USUARIO and senha == self.SENHA:
            response.set_cookie(
                "usuario_logado",
                usuario,
                secret="biblioteca-lumina",
                path="/"
            )

            redirect("/admin/livros")

        return self.exibir_login(
            "Usuário ou senha inválidos."
        )

    def logout(self):
        response.delete_cookie(
            "usuario_logado",
            path="/"
        )

        redirect("/login")

    def esta_logado(self):
        usuario = request.get_cookie(
            "usuario_logado",
            secret="biblioteca-lumina"
        )

        return usuario == self.USUARIO

    def exigir_login(self):
        if not self.esta_logado():
            redirect("/login")