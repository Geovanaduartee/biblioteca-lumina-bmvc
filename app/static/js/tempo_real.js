document.addEventListener("DOMContentLoaded", function () {
    const socket = io();

    const formulario = document.getElementById("form-aviso");
    const campoMensagem = document.getElementById("mensagem-aviso");
    const listaAvisos = document.getElementById("lista-avisos");
    const semAvisos = document.getElementById("sem-avisos");
    const statusConexao = document.getElementById("conexao-status");

    socket.on("connect", function () {
        statusConexao.textContent = "Conectado";
        statusConexao.classList.add("conectado");
    });

    socket.on("disconnect", function () {
        statusConexao.textContent = "Desconectado";
        statusConexao.classList.remove("conectado");
    });

    formulario.addEventListener("submit", function (evento) {
        evento.preventDefault();

        const mensagem = campoMensagem.value.trim();

        if (!mensagem) {
            return;
        }

        socket.emit("enviar_aviso", {
            mensagem: mensagem
        });

        campoMensagem.value = "";
        campoMensagem.focus();
    });

    socket.on("novo_aviso", function (dados) {
        if (semAvisos) {
            semAvisos.style.display = "none";
        }

        const aviso = document.createElement("article");
        aviso.classList.add("aviso-item");

        const texto = document.createElement("p");
        texto.textContent = dados.mensagem;

        const horario = document.createElement("small");
        horario.textContent = new Date().toLocaleTimeString(
            "pt-BR",
            {
                hour: "2-digit",
                minute: "2-digit",
                second: "2-digit"
            }
        );

        aviso.appendChild(texto);
        aviso.appendChild(horario);

        listaAvisos.prepend(aviso);
    });
});