-- Up Migration
CREATE TABLE pengguna (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    nim VARCHAR(32) UNIQUE NOT NULL,
    nama VARCHAR(70) NOT NULL,
    email_uisi VARCHAR(254) UNIQUE NOT NULL
)
-- Down Migration
DROP TABLE IF EXISTS pengguna;