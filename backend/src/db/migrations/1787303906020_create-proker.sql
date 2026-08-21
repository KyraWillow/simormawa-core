-- Up Migration
CREATE TABLE proker (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    periode_id uuid NOT NULL REFERENCES periode(id) ON DELETE RESTRICT,
    divisi_id uuid NOT NULL REFERENCES divisi(id) ON DELETE RESTRICT,
    pic_id uuid NOT NULL REFERENCES pengguna(id) ON DELETE RESTRICT,
    nama_proker VARCHAR(100) NOT NULL,
    tanggal_pelaksanaan DATE,
    deadline_kak DATE,
    status_proker progress_enum NOT NULL DEFAULT 'belum_mulai'
);
-- Down Migration
DROP TABLE IF EXISTS proker;