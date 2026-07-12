<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0"
    >

    <title>Acervo | Biblioteca Lumina</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
    >

    <link
        rel="stylesheet"
        href="/static/css/style.css"
    >
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container">

                <a class="navbar-brand" href="/">
                    <span class="logo-icone">📚</span>
                    Biblioteca Lumina
                </a>

                <button
                    class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#menuPrincipal"
                    aria-controls="menuPrincipal"
                    aria-expanded="false"
                    aria-label="Abrir menu"
                >
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div
                    class="collapse navbar-collapse"
                    id="menuPrincipal"
                >
                    <ul class="navbar-nav ms-auto">

                        <li class="nav-item">
                            <a class="nav-link" href="/">
                                Início
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" href="/acervo">
                                Acervo
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="/sobre">
                                Sobre
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="/contato">
                                Contato
                            </a>
                        </li>

                    </ul>
                </div>

            </div>
        </nav>
    </header>

    <main>

        <section class="pagina-topo">
            <div class="container text-center">

                <span class="hero-etiqueta">
                    Explore novas leituras
                </span>

                <h1>Nosso acervo</h1>

                <p>
                    Conheça alguns dos livros disponíveis na Biblioteca Lumina.
                </p>

            </div>
        </section>

        <section class="secao acervo-secao">
            <div class="container">

                <div class="filtros-acervo">

                    <div class="campo-pesquisa">
                        <label for="pesquisa-livro">
                            Pesquisar livro
                        </label>

                        <input
                            type="text"
                            id="pesquisa-livro"
                            class="form-control"
                            placeholder="Digite o título ou o autor"
                        >
                    </div>

                    <div class="campo-categoria">
                        <label for="filtro-categoria">
                            Categoria
                        </label>

                        <select
                            id="filtro-categoria"
                            class="form-select"
                        >
                            <option value="todas">
                                Todas
                            </option>

                            <option value="literatura">
                                Literatura
                            </option>

                            <option value="fantasia">
                                Fantasia
                            </option>

                            <option value="tecnologia">
                                Tecnologia
                            </option>

                            <option value="ciencia">
                                Ciência
                            </option>
                        </select>
                    </div>

                </div>

                <div
                    class="row g-4"
                    id="lista-livros"
                >

                    <div
                        class="col-md-6 col-lg-4 livro-item"
                        data-titulo="dom casmurro"
                        data-autor="machado de assis"
                        data-categoria="literatura"
                    >
                        <article class="card livro-card h-100">

                            <div class="capa-livro capa-azul">
                                <span>📘</span>
                            </div>

                            <div class="card-body">
                                <span class="categoria-livro">
                                    Literatura brasileira
                                </span>

                                <h3>Dom Casmurro</h3>

                                <p class="autor-livro">
                                    Machado de Assis
                                </p>

                                <p class="descricao-livro">
                                    Um clássico da literatura brasileira,
                                    marcado por memória, ciúme e ambiguidade.
                                </p>

                                <span class="status disponivel">
                                    Disponível
                                </span>
                            </div>

                        </article>
                    </div>

                    <div
                        class="col-md-6 col-lg-4 livro-item"
                        data-titulo="o hobbit"
                        data-autor="j r r tolkien"
                        data-categoria="fantasia"
                    >
                        <article class="card livro-card h-100">

                            <div class="capa-livro capa-verde">
                                <span>📗</span>
                            </div>

                            <div class="card-body">
                                <span class="categoria-livro">
                                    Fantasia
                                </span>

                                <h3>O Hobbit</h3>

                                <p class="autor-livro">
                                    J. R. R. Tolkien
                                </p>

                                <p class="descricao-livro">
                                    Uma aventura cheia de coragem, amizade,
                                    dragões e descobertas.
                                </p>

                                <span class="status disponivel">
                                    Disponível
                                </span>
                            </div>

                        </article>
                    </div>

                    <div
                        class="col-md-6 col-lg-4 livro-item"
                        data-titulo="clean code"
                        data-autor="robert c martin"
                        data-categoria="tecnologia"
                    >
                        <article class="card livro-card h-100">

                            <div class="capa-livro capa-dourada">
                                <span>📙</span>
                            </div>

                            <div class="card-body">
                                <span class="categoria-livro">
                                    Tecnologia
                                </span>

                                <h3>Clean Code</h3>

                                <p class="autor-livro">
                                    Robert C. Martin
                                </p>

                                <p class="descricao-livro">
                                    Princípios e práticas para escrever códigos
                                    mais claros, organizados e sustentáveis.
                                </p>

                                <span class="status disponivel">
                                    Disponível
                                </span>
                            </div>

                        </article>
                    </div>

                    <div
                        class="col-md-6 col-lg-4 livro-item"
                        data-titulo="o pequeno principe"
                        data-autor="antoine de saint exupery"
                        data-categoria="literatura"
                    >
                        <article class="card livro-card h-100">

                            <div class="capa-livro capa-roxa">
                                <span>📕</span>
                            </div>

                            <div class="card-body">
                                <span class="categoria-livro">
                                    Literatura
                                </span>

                                <h3>O Pequeno Príncipe</h3>

                                <p class="autor-livro">
                                    Antoine de Saint-Exupéry
                                </p>

                                <p class="descricao-livro">
                                    Uma história delicada sobre amizade, afeto
                                    e o valor das coisas essenciais.
                                </p>

                                <span class="status disponivel">
                                    Disponível
                                </span>
                            </div>

                        </article>
                    </div>

                    <div
                        class="col-md-6 col-lg-4 livro-item"
                        data-titulo="uma breve historia do tempo"
                        data-autor="stephen hawking"
                        data-categoria="ciencia"
                    >
                        <article class="card livro-card h-100">

                            <div class="capa-livro capa-cinza">
                                <span>📓</span>
                            </div>

                            <div class="card-body">
                                <span class="categoria-livro">
                                    Ciência
                                </span>

                                <h3>Uma Breve História do Tempo</h3>

                                <p class="autor-livro">
                                    Stephen Hawking
                                </p>

                                <p class="descricao-livro">
                                    Uma introdução acessível a temas como
                                    universo, tempo e buracos negros.
                                </p>

                                <span class="status indisponivel">
                                    Emprestado
                                </span>
                            </div>

                        </article>
                    </div>

                    <div
                        class="col-md-6 col-lg-4 livro-item"
                        data-titulo="engenharia de software moderna"
                        data-autor="marco tulio valente"
                        data-categoria="tecnologia"
                    >
                        <article class="card livro-card h-100">

                            <div class="capa-livro capa-laranja">
                                <span>📔</span>
                            </div>

                            <div class="card-body">
                                <span class="categoria-livro">
                                    Tecnologia
                                </span>

                                <h3>Engenharia de Software Moderna</h3>

                                <p class="autor-livro">
                                    Marco Túlio Valente
                                </p>

                                <p class="descricao-livro">
                                    Conceitos fundamentais sobre desenvolvimento,
                                    arquitetura, testes e qualidade de software.
                                </p>

                                <span class="status disponivel">
                                    Disponível
                                </span>
                            </div>

                        </article>
                    </div>

                </div>

                <div
                    class="nenhum-resultado"
                    id="nenhum-resultado"
                >
                    <span>🔎</span>

                    <h2>Nenhum livro encontrado</h2>

                    <p>
                        Tente pesquisar outro título, autor ou categoria.
                    </p>
                </div>

            </div>
        </section>

    </main>

    <footer class="rodape">
        <div class="container">

            <div class="row g-4">

                <div class="col-md-6">
                    <h2>📚 Biblioteca Lumina</h2>

                    <p>
                        Iluminando caminhos através da leitura.
                    </p>
                </div>

                <div class="col-md-3">
                    <h3>Navegação</h3>

                    <a href="/">Início</a>
                    <a href="/acervo">Acervo</a>
                    <a href="/sobre">Sobre</a>
                    <a href="/contato">Contato</a>
                </div>

                <div class="col-md-3">
                    <h3>Tecnologias</h3>

                    <p>Python</p>
                    <p>Bottle</p>
                    <p>BMVC</p>
                </div>

            </div>

            <div class="rodape-final">
                <p>
                    © <span id="ano-atual"></span> Biblioteca Lumina.
                    Projeto acadêmico.
                </p>
            </div>

        </div>
    </footer>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    ></script>

    <script src="/static/js/script.js"></script>

</body>
</html>