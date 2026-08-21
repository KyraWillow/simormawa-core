-- Up Migration
CREATE TABLE kak (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    proker_id uuid NOT NULL REFERENCES proker(id) ON DELETE RESTRICT UNIQUE,
    total_anggaran NUMERIC(11, 2) NOT NULL,
    status_kak status_kak_enum NOT NULL DEFAULT 'pengajuan',
    tanggal_diajukan TIMESTAMP NOT NULL DEFAULT NOW()
);
-- Down Migration
DROP TABLE IF EXISTS kak;