const fs = require("fs");

export default {
  mysql: {
    host: "db-mysql-nyc1-73711-do-user-6296120-0.db.ondigitalocean.com",
    port: 25060,
    user: "doadmin",
    database: "defaultdb",
    password: "vs8uo729lmc7t0dj",
    ssl: {
      ca: fs.readFileSync(__dirname + "\\ca-certificate.crt")
    }
  }
};
