from bottle import template


class Application:
    def __init__(self):
        self.pages = {
            "home": self.home,
            "sobre": self.sobre,
            "acervo": self.acervo,
            "contato": self.contato
        }

    def render(self, page):
        content = self.pages.get(page, self.helper)
        return content()

    def home(self):
        return template("app/views/html/home")

    def sobre(self):
        return template("app/views/html/sobre")

    def acervo(self):
        return template("app/views/html/acervo")

    def contato(self):
        return template("app/views/html/contato")

    def helper(self):
        return template("app/views/html/helper")