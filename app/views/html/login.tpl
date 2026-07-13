<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0"
    >

    <title>Login | Biblioteca Lumina</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
    >

    <link
        rel="stylesheet"
        href="/static/css/style.css"
    >
</head>

<body class="pagina-login">

    <main class="login-container">

        <section class="login-card">

            <h1>📚 Biblioteca Lumina</h1>

            <p>Entre para acessar a área administrativa.</p>

            % if erro:
                <div class="alert alert-danger">
                    {{erro}}
                </div>
            % end

            <form action="/login" method="post">

                <div class="mb-3">
                    <label for="usuario" class="form-label">
                        Usuário
                    </label>

                    <input
                        type="text"
                        id="usuario"
                        name="usuario"
                        class="form-control"
                        required
                    >
                </div>

                <div class="mb-4">
                    <label for="senha" class="form-label">
                        Senha
                    </label>

                    <input
                        type="password"
                        id="senha"
                        name="senha"
                        class="form-control"
                        required
                    >
                </div>

                <button
                    type="submit"
                    class="btn btn-primary w-100"
                >
                    Entrar
                </button>

            </form>

            <div class="login-dados">
                <strong>Dados para demonstração:</strong>
                <p>Usuário: admin</p>
                <p>Senha: 123</p>
            </div>

            <a href="/" class="login-voltar">
                Voltar para o início
            </a>

        </section>

    </main>

</body>
</html>