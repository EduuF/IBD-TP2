import * as mysql from "mysql";
import config from "../config";

import Movies from "./movies";

export const Connection = mysql.createConnection(config.mysql);

Connection.connect(error => {
  if (error) console.log(error);
});

export default {
  Movies
};
