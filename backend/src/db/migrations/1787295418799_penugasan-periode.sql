-- Up Migration
CREATE TABLE penugasan_periode (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    pengguna_id uuid NOT NULL REFERENCES pengguna(id) ON DELETE RESTRICT,
    periode_id uuid NOT NULL REFERENCES periode(id) ON DELETE RESTRICT,
    divisi_id uuid NOT NULL REFERENCES divisi(id) ON DELETE RESTRICT,
    role role_enum NOT NULL,
    UNIQUE (pengguna_id, periode_id)
);
-- Down Migration
DROP TABLE IF EXISTS penugasan_periode;