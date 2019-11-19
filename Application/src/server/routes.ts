import * as express from "express";

import DB from "./db";

const router = express.Router();

router.get("/api/hello", (req, res, next) => {
  res.json("World");
});

router.get("/api/movies", async (req, res) => {
  try {
    const movies = await DB.Movies.all();
    res.json(movies);
  } catch (e) {
    console.log(e);
    res.sendStatus(500);
  }
});

export default router;
