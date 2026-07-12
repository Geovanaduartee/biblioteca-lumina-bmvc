<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0"
    >

    <title>Biblioteca Lumina</title>

    <!-- Bootstrap -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
    >

    <!-- CSS próprio -->
    <link
        rel="stylesheet"
        href="/static/css/style.css"
    >
</head>

<body>

    <!-- Cabeçalho -->
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
                            <a
                                class="nav-link active"
                                href="/"
                            >
                                Início
                            </a>
                        </li>

                        <li class="nav-item">
                            <a
                                class="nav-link"
                                href="/acervo"
                            >
                                Acervo
                            </a>
                        </li>

                        <li class="nav-item">
                            <a
                                class="nav-link"
                                href="/sobre"
                            >
                                Sobre
                            </a>
                        </li>

                        <li class="nav-item">
                            <a
                                class="nav-link"
                                href="/contato"
                            >
                                Contato
                            </a>
                        </li>

                    </ul>
                </div>

            </div>
        </nav>
    </header>

    <main>

        <!-- Seção principal -->
        <section class="hero">
            <div class="container">
                <div class="row align-items-center">

                    <div class="col-lg-7 hero-texto">

                        <span class="hero-etiqueta">
                            Conhecimento ao alcance de todos
                        </span>

                        <h1>
                            Um universo de conhecimento ao seu alcance.
                        </h1>

                        <p>
                            Descubra histórias, explore novas ideias e encontre
                            a sua próxima leitura na Biblioteca Lumina.
                        </p>

                        <div class="hero-botoes">

                            <a
                                href="/acervo"
                                class="btn botao-principal"
                            >
                                Explorar acervo
                            </a>

                            <a
                                href="/sobre"
                                class="btn botao-secundario"
                            >
                                Conheça a biblioteca
                            </a>

                        </div>
                    </div>

                    <div class="col-lg-5 hero-ilustracao">
                        <div class="livro-destaque">
                            <span class="livro-icone">📖</span>

                            <h2>
                                Seu próximo livro começa aqui
                            </h2>

                            <p>
                                Leia, aprenda, imagine e compartilhe
                                conhecimento.
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- Livros em destaque -->
        <section class="secao livros-destaque">
            <div class="container">

                <div class="titulo-secao">
                    <span>Destaques</span>

                    <h2>Livros que inspiram leitores</h2>

                    <p>
                        Conheça alguns dos títulos disponíveis em nosso acervo.
                    </p>
                </div>

                <div class="row g-4">

                    <div class="col-md-6 col-lg-4">
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

                                <div class="avaliacao">
                                    ★★★★★
                                </div>

                                <span class="status disponivel">
                                    Disponível
                                </span>
                            </div>

                        </article>
                    </div>

                    <div class="col-md-6 col-lg-4">
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

                                <div class="avaliacao">
                                    ★★★★★
                                </div>

                                <span class="status disponivel">
                                    Disponível
                                </span>
                            </div>

                        </article>
                    </div>

                    <div class="col-md-6 col-lg-4">
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

                                <div class="avaliacao">
                                    ★★★★★
                                </div>

                                <span class="status disponivel">
                                    Disponível
                                </span>
                            </div>

                        </article>
                    </div>

                </div>
            </div>
        </section>

        <!-- Sobre -->
        <section class="secao sobre-resumo">
            <div class="container">

                <div class="row align-items-center g-5">

                    <div class="col-lg-6">
                        <div class="sobre-ilustracao">
                            <span>🏛️</span>
                        </div>
                    </div>

                    <div class="col-lg-6">

                        <span class="subtitulo">
                            Sobre a Biblioteca Lumina
                        </span>

                        <h2>
                            Um espaço para aprender, descobrir e compartilhar.
                        </h2>

                        <p>
                            A Biblioteca Lumina foi criada para aproximar as
                            pessoas da leitura e tornar o conhecimento mais
                            acessível para toda a comunidade.
                        </p>

                        <p>
                            Nosso acervo reúne obras de literatura, tecnologia,
                            história, educação, ciência e diversas outras áreas.
                        </p>

                        <a
                            href="/sobre"
                            class="btn botao-principal"
                        >
                            Saiba mais
                        </a>

                    </div>

                </div>
            </div>
        </section>

        <!-- Benefícios -->
        <section class="secao beneficios">
            <div class="container">

                <div class="titulo-secao">
                    <span>Nossos serviços</span>

                    <h2>Mais que uma coleção de livros</h2>

                    <p>
                        Recursos pensados para leitores, estudantes e toda a
                        comunidade.
                    </p>
                </div>

                <div class="row g-4">

                    <div class="col-md-6 col-lg-3">
                        <article class="beneficio-card">
                            <span class="beneficio-icone">📚</span>

                            <h3>Grande acervo</h3>

                            <p>
                                Livros de diferentes gêneros e áreas do
                                conhecimento.
                            </p>
                        </article>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <article class="beneficio-card">
                            <span class="beneficio-icone">🪑</span>

                            <h3>Espaço de estudos</h3>

                            <p>
                                Um ambiente organizado e tranquilo para estudar.
                            </p>
                        </article>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <article class="beneficio-card">
                            <span class="beneficio-icone">💻</span>

                            <h3>Consulta online</h3>

                            <p>
                                Consulte os títulos disponíveis em nosso acervo.
                            </p>
                        </article>
                    </div>

                    <div class="col-md-6 col-lg-3">
                        <article class="beneficio-card">
                            <span class="beneficio-icone">🤝</span>

                            <h3>Atendimento</h3>

                            <p>
                                Suporte para ajudar você a encontrar novas
                                leituras.
                            </p>
                        </article>
                    </div>

                </div>
            </div>
        </section>

        <!-- Horário -->
        <section class="horarios">
            <div class="container">

                <div class="row align-items-center g-4">

                    <div class="col-lg-7">

                        <span class="subtitulo subtitulo-claro">
                            Visite a biblioteca
                        </span>

                        <h2>
                            Um espaço preparado para receber você.
                        </h2>

                        <p>
                            Consulte nossos horários de funcionamento e venha
                            conhecer o acervo.
                        </p>

                    </div>

                    <div class="col-lg-5">

                        <div class="horario-card">

                            <div class="horario-linha">
                                <span>Segunda a sexta</span>
                                <strong>08h às 20h</strong>
                            </div>

                            <div class="horario-linha">
                                <span>Sábado</span>
                                <strong>08h às 13h</strong>
                            </div>

                            <div class="horario-linha">
                                <span>Domingo</span>
                                <strong>Fechado</strong>
                            </div>

                        </div>

                    </div>

                </div>
            </div>
        </section>

    </main>

    <!-- Rodapé -->
    <footer class="rodape">
        <div class="container">

            <div class="row g-4">

                <div class="col-md-6">
                    <h2>
                        📚 Biblioteca Lumina
                    </h2>

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

    <!-- Bootstrap -->
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    ></script>

    <!-- JavaScript próprio -->
    <script src="/static/js/script.js"></script>

</body>
</html>