import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import Drawer from "@material-ui/core/Drawer";
import CssBaseline from "@material-ui/core/CssBaseline";
import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import List from "@material-ui/core/List";
import Typography from "@material-ui/core/Typography";
import Divider from "@material-ui/core/Divider";
import ListItem from "@material-ui/core/ListItem";
import ListItemIcon from "@material-ui/core/ListItemIcon";
import ListItemText from "@material-ui/core/ListItemText";
import InboxIcon from "@material-ui/icons/MoveToInbox";
import MailIcon from "@material-ui/icons/Mail";
import MovieIcon from "@material-ui/icons/Movie";
import VpnKey from "@material-ui/icons/VpnKey";
import AccountCircle from "@material-ui/icons/AccountCircle";
import InsertChart from "@material-ui/icons/InsertChart";
import LocalMovies from "@material-ui/icons/LocalMovies";
import MovieFilter from "@material-ui/icons/MovieFilter";
import OpenInNew from "@material-ui/icons/OpenInNew";

const drawerWidth = 240;

const useStyles = makeStyles(theme => ({
  root: {
    display: "flex"
  },
  appBar: {
    width: `calc(100% - ${drawerWidth}px)`,
    marginLeft: drawerWidth
  },
  drawer: {
    width: drawerWidth,
    flexShrink: 0
  },
  drawerPaper: {
    width: drawerWidth
  },
  toolbar: theme.mixins.toolbar,
  content: {
    flexGrow: 1,
    backgroundColor: theme.palette.background.default,
    padding: theme.spacing(3)
  }
}));

export default function PermanentDrawerLeft() {
  const classes = useStyles();

  return (
    <div className={classes.root}>
      <Drawer
        className={classes.drawer}
        variant="permanent"
        classes={{
          paper: classes.drawerPaper
        }}
        anchor="left"
      >
        <div className={classes.toolbar}>
          <img
            src="./movielens.png"
            alt="TP2 - MovieLens"
            style={{ width: "100%" }}
          />
        </div>
        <Divider />
        <List>
          <ListItem button key="Filmes" component="a" href="/#/filmes">
            <ListItemIcon>
              <MovieIcon />
            </ListItemIcon>
            <ListItemText primary="Filmes" />
          </ListItem>
          <ListItem button key="Generos" component="a" href="/#/generos">
            <ListItemIcon>
              <LocalMovies />
            </ListItemIcon>
            <ListItemText primary="Generos" />
          </ListItem>
          <ListItem
            button
            key="Filme Genero"
            component="a"
            href="/#/filme-genero"
          >
            <ListItemIcon>
              <MovieFilter />
            </ListItemIcon>
            <ListItemText primary="Filme Genero" />
          </ListItem>
          <ListItem button key="Usuarios" component="a" href="/#/usuarios">
            <ListItemIcon>
              <AccountCircle />
            </ListItemIcon>
            <ListItemText primary="Usuarios" />
          </ListItem>
          <ListItem button key="Avaliações" component="a" href="/#/avaliacoes">
            <ListItemIcon>
              <InsertChart />
            </ListItemIcon>
            <ListItemText primary="Avaliações" />
          </ListItem>
          <ListItem
            button
            key="Palavras Chave"
            component="a"
            href="/#/palavras-chave"
          >
            <ListItemIcon>
              <VpnKey />
            </ListItemIcon>
            <ListItemText primary="Palavras Chave" />
          </ListItem>
        </List>
        <Divider />
        <List>
          {[
            "Consulta 1",
            "Consulta 2",
            "Consulta 3",
            "Consulta 4",
            "Consulta 5",
            "Consulta 6",
            "Consulta 7",
            "Consulta 8",
            "Consulta 9",
            "Consulta 10"
          ].map((text, index) => (
            <ListItem button key={text}>
              <ListItemIcon>
                <OpenInNew />
              </ListItemIcon>
              <ListItemText primary={text} />
            </ListItem>
          ))}
        </List>
      </Drawer>
    </div>
  );
}
