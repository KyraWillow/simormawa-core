// import { conn } from "./client";

// let testing = await conn`SELECT version();`;

// try {
//   if (!testing) {
//     throw new Error("Koneksi bermasalah");
//   } else {
//     console.info(testing);
//   }
// } catch (e) {
//   if (e instanceof Error) {
//     console.info(e.message);
//   }
// }
// let test = "/backend/src/";
// let files = Bun.file(test);
// console.info(files);

import { Glob } from "bun";

const glob = new Glob("*.ts");

glob.match("index.ts"); // => true
glob.match("index.js"); // => false
