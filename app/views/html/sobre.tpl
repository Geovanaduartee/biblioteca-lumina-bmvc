<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0"
    >

    <title>Sobre | Biblioteca Lumina</title>

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
                            <a class="nav-link" href="/acervo">
                                Acervo
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" href="/sobre">
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
                    Conheça nossa história
                </span>

                <h1>Sobre a Biblioteca Lumina</h1>

                <p>
                    Um espaço dedicado à leitura, à aprendizagem e ao
                    compartilhamento do conhecimento.
                </p>

            </div>
        </section>

        <section class="secao">
            <div class="container">

                <div class="row align-items-center g-5">

                    <div class="col-lg-6">
                        <div class="sobre-ilustracao">
                            <span>📚</span>
                        </div>
                    </div>

                    <div class="col-lg-6">

                        <span class="subtitulo">
                            Nossa missão
                        </span>

                        <h2 class="titulo-pagina">
                            Aproximar pessoas, livros e conhecimento.
                        </h2>

                        <p>
                            A Biblioteca Lumina foi criada com o propósito de
                            incentivar a leitura e oferecer um ambiente
                            acessível para estudantes, pesquisadores e leitores
                            de todas as idades.
                        </p>

                        <p>
                            Nosso acervo reúne obras de literatura, tecnologia,
                            história, ciência, educação e diversas outras áreas
                            do conhecimento.
                        </p>

                        <p>
                            Além do empréstimo de livros, oferecemos espaço para
                            estudos, consulta ao acervo e atendimento aos
                            leitores.
                        </p>

                    </div>

                </div>

            </div>
        </section>

        <section class="secao beneficios">
            <div class="container">

                <div class="titulo-secao">
                    <span>Nossos valores</span>

                    <h2>O que orienta nosso trabalho</h2>

                    <p>
                        Acreditamos que o conhecimento deve ser acessível,
                        compartilhado e valorizado.
                    </p>
                </div>

                <div class="row g-4">

                    <div class="col-md-6 col-lg-4">
                        <article class="beneficio-card">

                            <span class="beneficio-icone">💡</span>

                            <h3>Conhecimento</h3>

                            <p>
                                Incentivamos a aprendizagem e a descoberta de
                                novas ideias.
                            </p>

                        </article>
                    </div>

                    <div class="col-md-6 col-lg-4">
                        <article class="beneficio-card">

                            <span class="beneficio-icone">🤝</span>

                            <h3>Acessibilidade</h3>

                            <p>
                                Buscamos tornar a leitura acessível para toda a
                                comunidade.
                            </p>

                        </article>
                    </div>

                    <div class="col-md-6 col-lg-4">
                        <article class="beneficio-card">

                            <span class="beneficio-icone">🌱</span>

                            <h3>Desenvolvimento</h3>

                            <p>
                                A leitura contribui para o crescimento pessoal,
                                acadêmico e profissional.
                            </p>

                        </article>
                    </div>

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