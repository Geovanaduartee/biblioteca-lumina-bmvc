<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0"
    >

    <title>Contato | Biblioteca Lumina</title>

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
                            <a class="nav-link" href="/sobre">
                                Sobre
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" href="/contato">
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
                    Fale com a biblioteca
                </span>

                <h1>Entre em contato</h1>

                <p>
                    Envie sua mensagem, tire dúvidas ou conheça nossos canais
                    de atendimento.
                </p>

            </div>
        </section>

        <section class="secao contato-secao">
            <div class="container">

                <div class="row g-5">

                    <div class="col-lg-5">

                        <span class="subtitulo">
                            Informações
                        </span>

                        <h2 class="titulo-pagina">
                            Estamos disponíveis para ajudar.
                        </h2>

                        <p class="texto-contato">
                            Entre em contato para obter informações sobre o
                            acervo, horários, empréstimos e serviços da
                            Biblioteca Lumina.
                        </p>

                        <div class="lista-contato">

                            <article class="item-contato">
                                <span class="item-contato-icone">📍</span>

                                <div>
                                    <h3>Endereço</h3>
                                    <p>
                                        Avenida do Conhecimento, 100<br>
                                        Brasília - DF
                                    </p>
                                </div>
                            </article>

                            <article class="item-contato">
                                <span class="item-contato-icone">📞</span>

                                <div>
                                    <h3>Telefone</h3>
                                    <p>(61) 3333-3333</p>
                                </div>
                            </article>

                            <article class="item-contato">
                                <span class="item-contato-icone">✉️</span>

                                <div>
                                    <h3>E-mail</h3>
                                    <p>contato@bibliotecalumina.com</p>
                                </div>
                            </article>

                            <article class="item-contato">
                                <span class="item-contato-icone">🕒</span>

                                <div>
                                    <h3>Funcionamento</h3>
                                    <p>
                                        Segunda a sexta: 08h às 20h<br>
                                        Sábado: 08h às 13h
                                    </p>
                                </div>
                            </article>

                        </div>

                    </div>

                    <div class="col-lg-7">

                        <form
                            class="formulario-contato"
                            id="formulario-contato"
                        >

                            <h2>Envie uma mensagem</h2>

                            <p>
                                Preencha os campos abaixo. Esta demonstração não
                                envia os dados para um servidor.
                            </p>

                            <div class="row g-3">

                                <div class="col-md-6">
                                    <label
                                        for="nome"
                                        class="form-label"
                                    >
                                        Nome
                                    </label>

                                    <input
                                        type="text"
                                        class="form-control"
                                        id="nome"
                                        placeholder="Digite seu nome"
                                        required
                                    >
                                </div>

                                <div class="col-md-6">
                                    <label
                                        for="email"
                                        class="form-label"
                                    >
                                        E-mail
                                    </label>

                                    <input
                                        type="email"
                                        class="form-control"
                                        id="email"
                                        placeholder="nome@exemplo.com"
                                        required
                                    >
                                </div>

                                <div class="col-12">
                                    <label
                                        for="assunto"
                                        class="form-label"
                                    >
                                        Assunto
                                    </label>

                                    <select
                                        class="form-select"
                                        id="assunto"
                                        required
                                    >
                                        <option value="">
                                            Selecione uma opção
                                        </option>

                                        <option value="acervo">
                                            Dúvidas sobre o acervo
                                        </option>

                                        <option value="emprestimo">
                                            Empréstimos
                                        </option>

                                        <option value="horarios">
                                            Horários de funcionamento
                                        </option>

                                        <option value="outro">
                                            Outro assunto
                                        </option>
                                    </select>
                                </div>

                                <div class="col-12">
                                    <label
                                        for="mensagem"
                                        class="form-label"
                                    >
                                        Mensagem
                                    </label>

                                    <textarea
                                        class="form-control"
                                        id="mensagem"
                                        rows="6"
                                        placeholder="Digite sua mensagem"
                                        required
                                    ></textarea>
                                </div>

                                <div class="col-12">
                                    <button
                                        type="submit"
                                        class="btn botao-principal"
                                    >
                                        Enviar mensagem
                                    </button>
                                </div>

                            </div>

                            <div
                                class="mensagem-sucesso"
                                id="mensagem-sucesso"
                            >
                                ✅ Mensagem preenchida com sucesso!
                            </div>

                        </form>

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