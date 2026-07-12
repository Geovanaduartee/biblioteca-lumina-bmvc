document.addEventListener("DOMContentLoaded", function () {
    const anoAtual = document.getElementById("ano-atual");
    const linksMenu = document.querySelectorAll(".navbar .nav-link");
    const menuResponsivo = document.getElementById("menuPrincipal");

    if (anoAtual) {
        anoAtual.textContent = new Date().getFullYear();
    }

    linksMenu.forEach(function (link) {
        link.addEventListener("click", function () {
            if (
                menuResponsivo &&
                menuResponsivo.classList.contains("show")
            ) {
                const instanciaMenu = bootstrap.Collapse.getOrCreateInstance(
                    menuResponsivo
                );

                instanciaMenu.hide();
            }
        });
    });

    const cards = document.querySelectorAll(
        ".livro-card, .beneficio-card"
    );

    cards.forEach(function (card) {
        card.addEventListener("mouseenter", function () {
            card.classList.add("card-ativo");
        });

        card.addEventListener("mouseleave", function () {
            card.classList.remove("card-ativo");
        });
    });
    const campoPesquisa = document.getElementById("pesquisa-livro");
    const filtroCategoria = document.getElementById("filtro-categoria");
    const livros = document.querySelectorAll(".livro-item");
    const nenhumResultado = document.getElementById("nenhum-resultado");

    function filtrarLivros() {
        if (!campoPesquisa || !filtroCategoria) {
            return;
        }

        const pesquisa = campoPesquisa.value
            .toLowerCase()
            .trim();

        const categoriaSelecionada = filtroCategoria.value;

        let totalVisivel = 0;

        livros.forEach(function (livro) {
            const titulo = livro.dataset.titulo;
            const autor = livro.dataset.autor;
            const categoria = livro.dataset.categoria;

            const correspondePesquisa =
                titulo.includes(pesquisa) ||
                autor.includes(pesquisa);

            const correspondeCategoria =
                categoriaSelecionada === "todas" ||
                categoria === categoriaSelecionada;

            const deveAparecer =
                correspondePesquisa &&
                correspondeCategoria;

            livro.style.display = deveAparecer ? "" : "none";

            if (deveAparecer) {
                totalVisivel++;
            }
        });

        if (nenhumResultado) {
            nenhumResultado.style.display =
                totalVisivel === 0 ? "block" : "none";
        }
    }

    if (campoPesquisa) {
        campoPesquisa.addEventListener("input", filtrarLivros);
    }

    if (filtroCategoria) {
        filtroCategoria.addEventListener("change", filtrarLivros);
    }
    const formularioContato = document.getElementById(
        "formulario-contato"
    );

    const mensagemSucesso = document.getElementById(
        "mensagem-sucesso"
    );

    if (formularioContato) {
        formularioContato.addEventListener(
            "submit",
            function (evento) {
                evento.preventDefault();

                if (mensagemSucesso) {
                    mensagemSucesso.style.display = "block";
                }

                formularioContato.reset();

                setTimeout(function () {
                    if (mensagemSucesso) {
                        mensagemSucesso.style.display = "none";
                    }
                }, 4000);
            }
        );
    }
});