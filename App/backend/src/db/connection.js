const mysql = require("mysql");
const config = require("../config/index");
const Connection = mysql.createConnection(config.mysql);

Connection.connect(error => {
  if (error) console.log(error);
});

module.exports = Connection;
