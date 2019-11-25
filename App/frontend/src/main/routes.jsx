import React from "react";

import { Route, Switch, Redirect, HashRouter } from "react-router-dom";
import Avaliacoes from "../avaliacoes/Avaliacoes";
import Filmes from "../filmes/Filmes";
import FilmeGenero from "../filme_genero/FilmeGenero";
import Generos from "../generos/Generos";
import PalavrasChave from "../palavras_chave/PalavrasChave";
import Usuarios from "../usuarios/Usuarios";

export default props => (
  <HashRouter>
    <Route path="/avaliacoes" component={Avaliacoes}></Route>
    <Route path="/filmes" component={Filmes}></Route>
    <Route path="/filme-genero" component={FilmeGenero}></Route>
    <Route path="/generos" component={Generos}></Route>
    <Route path="/palavras-chave" component={PalavrasChave}></Route>
    <Route path="/usuarios" component={Usuarios}></Route>
    <Redirect from="*" to="/filmes" />
  </HashRouter>
);
