const mysql = require("mysql");
const dotenv = require("dotenv");
dotenv.config({ path: "./.env" });

const connection = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  database: process.env.DATABASE,
  password: process.env.DATABASE_PASSWORD,
  user: process.env.DATABASE_USER,
});
connection.connect((error) => {
  if (error) {
    console.log(error);
  } else {
    console.log("connected");
  }
});

module.exports = connection;
