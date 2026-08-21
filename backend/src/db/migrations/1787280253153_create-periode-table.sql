-- Up Migration
CREATE TABLE periode (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    nama_periode VARCHAR(70) NOT NULL,
    tanggal_mulai DATE NOT NULL,
    tanggal_selesai DATE NOT NULL,

    CONSTRAINT chk_start_date_required_before_end_date CHECK(tanggal_selesai > tanggal_mulai)
);
-- Down Migration
DROP TABLE IF EXISTS periode;