var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/cadastrarFoto", function (req, res) {
    usuarioController.cadastrarFoto(req, res);
})

router.post("/cadastrarSenha", function (req, res) {
    usuarioController.cadastrarSenha(req, res);
})

router.post("/cadastrarNome", function (req, res) {
    usuarioController.cadastrarNome(req, res);
})

router.post("/cadastrarPostagem", function (req, res) {
    usuarioController.cadastrarPostagem(req, res);
})

router.post("/buscarNumero", function (req, res) {
    usuarioController.buscarNumero(req, res);
})

router.post("/atualizarPostagens", function (req, res) {
    usuarioController.atualizarPostagens(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

module.exports = router;