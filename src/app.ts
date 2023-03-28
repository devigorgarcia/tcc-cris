import "express-async-errors";
import express from "express";
import { PrismaClient } from "@prisma/client";
import { appRoutes } from "./routes";
import { handleErrors } from "./errors";

export const prisma = new PrismaClient();

const app = express();
app.get("/", async (req, res) => {
  res.send("Hello World");
});

app.use(express.json());
appRoutes(app);
app.use(handleErrors);

const server = app.listen(3000, () =>
  console.log(`Server is running on http://localhost:3000`)
);
