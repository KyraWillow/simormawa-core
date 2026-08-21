-- Up Migration
CREATE TYPE status_kak_enum AS ENUM ('pengajuan', 'review_bendahara', 'revisi', 'review_bph', 'disetujui');
-- Down Migration
DROP TYPE IF EXISTS status_kak_enum;