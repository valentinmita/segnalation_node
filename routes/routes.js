const express = require("express");
const router = express.Router();
const mysql = require("mysql");

const connection = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  database: process.env.DATABASE,
  password: process.env.DATABASE_PASSWORD,
  user: process.env.DATABASE_USER,
});

router.get("/", (req, res) => {
  res.render("index");
});
router.get("/submit", (req, res) => {
  res.render("submit");
});
router.get("/all", (req, res) => {
  var sql = "select * from node";
  connection.query(sql, function (error, results) {
    if (error) {
      console.log(error);
    } else {
      console.log(results);
    }
    res.render("all", { records: results });
  });
});

module.exports = router;
