<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0"
    >

    <title>Administração de Livros | Biblioteca Lumina</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
    >

    <link
        rel="stylesheet"
        href="/static/css/style.css"
    >

    <link
        rel="icon"
        href="/static/img/favicon.ico"
    >
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container">

                <a class="navbar-brand" href="/">
                    <img
                        src="/static/img/logo.png"
                        alt="Logo da Biblioteca Lumina"
                        class="logo-imagem"
                    >
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
                            <a class="nav-link active" href="/admin/livros">
                                Administrar livros
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
                    Área administrativa
                </span>

                <h1>Gerenciamento de livros</h1>

                <p>
                    Cadastre, consulte, edite e exclua os livros da Biblioteca
                    Lumina.
                </p>

            </div>
        </section>

        <section class="secao admin-livros-secao">
            <div class="container">

                <div class="admin-cabecalho">

                    <div>
                        <span class="subtitulo">
                            CRUD de livros
                        </span>

                        <h2>Livros cadastrados</h2>

                        <p>
                            Total de livros:
                            <strong>{{len(livros)}}</strong>
                        </p>
                    </div>

                    <a
                        href="/admin/livros/cadastrar"
                        class="btn botao-principal"
                    >
                        + Cadastrar livro
                    </a>

                </div>

                % if livros:

                    <div class="table-responsive">
                        <table class="table tabela-livros align-middle">

                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Título</th>
                                    <th>Autor</th>
                                    <th>Categoria</th>
                                    <th>Ano</th>
                                    <th>ISBN</th>
                                    <th>Status</th>
                                    <th>Ações</th>
                                </tr>
                            </thead>

                            <tbody>

                                % for livro in livros:
                                    <tr>
                                        <td>{{livro.id}}</td>

                                        <td>
                                            <strong>{{livro.titulo}}</strong>
                                        </td>

                                        <td>{{livro.autor}}</td>

                                        <td>{{livro.categoria}}</td>

                                        <td>{{livro.ano}}</td>

                                        <td>{{livro.isbn}}</td>

                                        <td>
                                            % if livro.disponivel:
                                                <span class="status disponivel">
                                                    Disponível
                                                </span>
                                            % else:
                                                <span class="status indisponivel">
                                                    Emprestado
                                                </span>
                                            % end
                                        </td>

                                        <td>
                                            <div class="acoes-livro">

                                                <a
                                                    href="/admin/livros/{{livro.id}}/editar"
                                                    class="btn btn-sm btn-outline-primary"
                                                >
                                                    Editar
                                                </a>

                                                <form
                                                    action="/admin/livros/{{livro.id}}/excluir"
                                                    method="post"
                                                    class="form-exclusao"
                                                >
                                                    <button
                                                        type="submit"
                                                        class="btn btn-sm btn-outline-danger"
                                                    >
                                                        Excluir
                                                    </button>
                                                </form>

                                            </div>
                                        </td>
                                    </tr>
                                % end

                            </tbody>
                        </table>
                    </div>

                % else:

                    <div class="estado-vazio">

                        <span>📚</span>

                        <h2>Nenhum livro cadastrado</h2>

                        <p>
                            Cadastre o primeiro livro para iniciar o acervo
                            dinâmico da Biblioteca Lumina.
                        </p>

                        <a
                            href="/admin/livros/cadastrar"
                            class="btn botao-principal"
                        >
                            Cadastrar primeiro livro
                        </a>

                    </div>

                % end

            </div>
        </section>

    </main>

    <footer class="rodape">
        <div class="container">

            <div class="row g-4">

                <div class="col-md-6">
                    <h2>📚 Biblioteca Lumina</h2>
                    <p>Iluminando caminhos através da leitura.</p>
                </div>

                <div class="col-md-3">
                    <h3>Navegação</h3>

                    <a href="/">Início</a>
                    <a href="/acervo">Acervo</a>
                    <a href="/admin/livros">Administrar livros</a>
                </div>

                <div class="col-md-3">
                    <h3>Desenvolvedoras</h3>

                    <p>Geovana Duarte</p>
                    <p>Giovanna Santos</p>
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