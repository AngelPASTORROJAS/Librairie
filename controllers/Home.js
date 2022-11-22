import { connection } from "../bdd/app.js";
import {ReturnBook} from "./ReturnBook.js";

export default (req, res,next) => {
  

  let dateDiff = 21 // 3 ssemaines
  let requete = "SELECT *, DATEDIFF(CURRENT_DATE,DateEmprunt)>=? as EstDepassee FROM librairies ORDER BY EstEmpruntee DESC, EstDepassee ASC, DateEmprunt DESC";

  connection.query(requete,dateDiff, function (error, books, fields) {
    
    !!error?
        console.log(error):
        res.render("home.ejs", { books: books, rendu:ReturnBook });
  });
};
