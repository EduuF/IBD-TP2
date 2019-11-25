import React from "react";
import Menu from "../menu/Menu";
import Routes from "./routes";
import Grid from "@material-ui/core/Grid";
import Container from "@material-ui/core/Container";

export default props => (
  <>
    <Grid container>
      <Grid item xs={2} md={2}>
        <Menu />
      </Grid>
      <Grid item xs={10} md={10}>
        <Container spacing={1}>
          <Routes />
        </Container>
      </Grid>
    </Grid>
  </>
);
