import { connection } from "../bdd/app.js";

export default (req, res) => {
  let requete = "SELECT * From librairies";

  connection.query(requete, function (error, books, fields) {
      !!error?console.log(error):res.render("home.ejs", { books: books });
  });
};
