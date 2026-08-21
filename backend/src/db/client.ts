import { SQL } from "bun";

const host = process.env.POSTGRES_HOST;
const user = process.env.POSTGRES_USR;
const pwd = process.env.POSTGRES_PWD;
const db = process.env.POSTGRES_DB;

if (!user) {
  throw new Error("Masukkan host yang valid!");
}

if (!pwd) {
  throw new Error("Masukkan password yang valid!");
}

if (!db) {
  throw new Error("Masukkan database yang valid!");
}

export const conn = new SQL({
  url: `postgres://${user}:${pwd}@${host}:5432/${db}`,
  idleTimeout: 30,
});
