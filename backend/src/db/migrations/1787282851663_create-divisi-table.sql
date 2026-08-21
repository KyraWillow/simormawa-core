-- Up Migration
CREATE TABLE divisi (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    nama_divisi VARCHAR(70) UNIQUE NOT NULL,
    lintas_divisi BOOLEAN NOT NULL DEFAULT false
);
-- Down Migration
DROP TABLE IF EXISTS divisi;