import { connection } from "../bdd/app.js";

export default (req, res) => {
  let id = req.body.Id;
  let dateNow = new Date();
  dateNow = [
    dateNow.getFullYear().toString(),
    (dateNow.getMonth() + 1).toString(),
    dateNow.getDate().toString()
  ].join("-");
  let insertToRequeteRendu = [dateNow, id];

  let requeteRendu =
    "UPDATE librairies SET EstEmpruntee = 0, SET DateRetour = ? WHERE librairies.Id = ?";
  connection.query(
    requeteRendu,
    insertToRequeteRendu,
    function (error, result, fields) {
      !!error ? console.log(error) : res.redirect("home.ejs");
    }
  );
};
