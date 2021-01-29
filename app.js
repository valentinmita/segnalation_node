const express = require("express");
const ejs = require("ejs");
const path = require("path");
const app = express();
const connection = require("./db");
const port = 8080;

//using multer
const multer = require("multer");
const storage = multer.diskStorage({
  destination: "./public/img",
  filename: function (req, file, cb) {
    cb(
      null,
      file.fieldname + "-" + Date.now() + path.extname(file.originalname)
    );
  },
});
const upload = multer({ storage: storage });

//set views
app.set("view engine", "ejs");

//define the const to use as expres static
const public = path.join(__dirname, "./public");
const img = path.join(__dirname, "./public/img");
const background = path.join(__dirname, "./public/background");

app.use(express.static(public));
app.use(express.static(img));
app.use(express.static(background));

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

//define routes
app.use("/", require("./routes/routes"));
app.post("/submit", upload.single("file"), (req, res) => {
  res.render("submit");
  console.log(req.body);
  console.log(req.file);
  console.log(req.file.path);
  const file = req.file.filename;
  const { luogo, causa, title } = req.body;
  var sql =
    "insert into node (luogo,causa,title,file) values ('" +
    luogo +
    "','" +
    causa +
    "','" +
    title +
    "','" +
    file +
    "')";
  connection.query(sql, function (error) {
    if (error) {
      console.log(error);
    } else {
      console.log("submited");
    }
  });
});

//access
app.listen(port, () => console.log(`server started on port ${port}`));
