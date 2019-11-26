const express = require("express");

const tables = require("./db/tables");
const router = express.Router();

router.get("/api/hello", (req, res, next) => {
  res.json("World");
});

router.get("/api/avaliacoes", async (req, res) => {
  try {
    const avaliacoes = await tables.Avaliacoes.all();
    res.json(avaliacoes);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

router.get("/api/filmes", async (req, res) => {
  try {
    const filmes = await tables.Filmes.all();
    res.json(filmes);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

router.get("/api/filme-genero", async (req, res) => {
  try {
    const filme_genero = await tables.FilmeGenero.all();
    res.json(filme_genero);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

router.get("/api/generos", async (req, res) => {
  try {
    const generos = await tables.Generos.all();
    res.json(generos);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

router.get("/api/palavras-chave", async (req, res) => {
  try {
    const palavras_chave = await tables.PalavrasChave.all();
    res.json(palavras_chave);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

router.get("/api/usuarios", async (req, res) => {
  try {
    const usuarios = await tables.Usuarios.all();
    res.json(usuarios);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

module.exports = router;
