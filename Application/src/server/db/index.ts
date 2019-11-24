import * as mysql from "mysql";
import config from "../config";

import Avaliacoes from "./avaliacoes";
import Filmes from "./filmes";
import FilmeGenero from "./filme_genero";
import Generos from "./generos";
import PalavrasChave from "./palavras_chave";
import Usuarios from "./usuarios";

export const Connection = mysql.createConnection(config.mysql);

Connection.connect(error => {
  if (error) console.log(error);
});

export default {
  Avaliacoes,
  Filmes,
  FilmeGenero,
  Generos,
  PalavrasChave,
  Usuarios
};
