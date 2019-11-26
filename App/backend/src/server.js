const apiRouter = require("./routes");
const express = require("express");
const cors = require("cors");

const app = express();
app.use(cors());

app.use(express.static("public"));
app.use(apiRouter);

const port = process.env.PORT || 4000;
app.listen(port, () => console.log(`Server listening on port: ${port}`));
