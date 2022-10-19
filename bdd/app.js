import mysql from "mysql";

const config = {
  host: "localhost",
  user: "root",
  password: "",
  database: "librairie",
  multipleStatements: true
};

export const connection = mysql.createConnection(config);
