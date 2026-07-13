<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0"
    >

    <title>Avisos em Tempo Real | Biblioteca Lumina</title>

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

    <main class="tempo-real-container">

        <section class="tempo-real-card">

            <div class="tempo-real-topo">

                <div>
                    <span class="subtitulo">
                        Comunicação WebSocket
                    </span>

                    <h1>Avisos em tempo real</h1>

                    <p>
                        Envie uma mensagem e veja a atualização aparecer
                        imediatamente em todas as janelas conectadas.
                    </p>
                </div>

                <span
                    class="conexao-status"
                    id="conexao-status"
                >
                    Conectando...
                </span>

            </div>

            <form id="form-aviso">

                <label
                    for="mensagem-aviso"
                    class="form-label"
                >
                    Digite um aviso
                </label>

                <div class="input-group">

                    <input
                        type="text"
                        id="mensagem-aviso"
                        class="form-control"
                        placeholder="Exemplo: A biblioteca fechará às 18h."
                        required
                    >

                    <button
                        type="submit"
                        class="btn btn-primary"
                    >
                        Enviar
                    </button>

                </div>

            </form>

            <div class="avisos-area">

                <h2>Avisos recebidos</h2>

                <div id="lista-avisos">

                    <div
                        class="sem-avisos"
                        id="sem-avisos"
                    >
                        Nenhum aviso recebido até o momento.
                    </div>

                </div>

            </div>

            <div class="tempo-real-links">

                <a
                    href="/admin/livros"
                    class="btn btn-outline-primary"
                >
                    Voltar para os livros
                </a>

                <a
                    href="/logout"
                    class="btn btn-outline-danger"
                >
                    Sair
                </a>

            </div>

        </section>

    </main>

    <script
        src="https://cdn.socket.io/4.7.5/socket.io.min.js"
    ></script>

    <script src="/static/js/tempo_real.js"></script>

</body>
</html>