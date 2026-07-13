<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>{{titulo_pagina}} | Biblioteca Lumina</title>

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

    <main class="container py-5">

        <div class="formulario-livro">

            <h1>{{titulo_pagina}}</h1>

            % if erro:
                <div class="alert alert-danger">
                    {{erro}}
                </div>
            % end

            <form action="{{acao}}" method="post">

                <div class="mb-3">
                    <label for="titulo" class="form-label">
                        Título
                    </label>

                    <input
                        type="text"
                        id="titulo"
                        name="titulo"
                        class="form-control"
                        value="{{livro.titulo if livro else ''}}"
                        required
                    >
                </div>

                <div class="mb-3">
                    <label for="autor" class="form-label">
                        Autor
                    </label>

                    <input
                        type="text"
                        id="autor"
                        name="autor"
                        class="form-control"
                        value="{{livro.autor if livro else ''}}"
                        required
                    >
                </div>

                <div class="mb-3">
                    <label for="categoria" class="form-label">
                        Categoria
                    </label>

                    <input
                        type="text"
                        id="categoria"
                        name="categoria"
                        class="form-control"
                        value="{{livro.categoria if livro else ''}}"
                        required
                    >
                </div>

                <div class="mb-3">
                    <label for="ano" class="form-label">
                        Ano
                    </label>

                    <input
                        type="number"
                        id="ano"
                        name="ano"
                        class="form-control"
                        value="{{livro.ano if livro else ''}}"
                        required
                    >
                </div>

                <div class="mb-3">
                    <label for="isbn" class="form-label">
                        ISBN
                    </label>

                    <input
                        type="text"
                        id="isbn"
                        name="isbn"
                        class="form-control"
                        value="{{livro.isbn if livro else ''}}"
                        required
                    >
                </div>

                <div class="form-check mb-4">
                    <input
                        type="checkbox"
                        id="disponivel"
                        name="disponivel"
                        class="form-check-input"
                        {{'checked' if not livro or livro.disponivel else ''}}
                    >

                    <label for="disponivel" class="form-check-label">
                        Livro disponível
                    </label>
                </div>

                <div class="d-flex gap-2">

                    <button
                        type="submit"
                        class="btn btn-primary"
                    >
                        Salvar
                    </button>

                    <a
                        href="/admin/livros"
                        class="btn btn-secondary"
                    >
                        Cancelar
                    </a>

                </div>

            </form>

        </div>

    </main>

</body>
</html>