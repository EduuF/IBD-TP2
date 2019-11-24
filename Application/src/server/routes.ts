import * as express from "express";

import DB from "./db";

const router = express.Router();

router.get("/api/hello", (req, res, next) => {
  res.json("World");
});

router.get("/api/avaliacoes", async (req, res) => {
  try {
    const avaliacoes = await DB.Avaliacoes.all();
    res.json(avaliacoes);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

router.get("/api/filmes", async (req, res) => {
  try {
    const filmes = await DB.Filmes.all();
    res.json(filmes);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

router.get("/api/filme-genero", async (req, res) => {
  try {
    const filme_genero = await DB.FilmeGenero.all();
    res.json(filme_genero);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

router.get("/api/generos", async (req, res) => {
  try {
    const generos = await DB.Generos.all();
    res.json(generos);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

router.get("/api/palavras-chave", async (req, res) => {
  try {
    const palavras_chave = await DB.PalavrasChave.all();
    res.json(palavras_chave);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

router.get("/api/usuarios", async (req, res) => {
  try {
    const usuarios = await DB.Usuarios.all();
    res.json(usuarios);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

export default router;
