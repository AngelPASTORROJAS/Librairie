import express from "express";
import HomeController from "../controllers/Home.js";
import ReturnBook from "../controllers/ReturnBook.js";


const router = express.Router();

router.get("/", HomeController);
router.get("/Rendu/:id", ReturnBook);

export default router;
