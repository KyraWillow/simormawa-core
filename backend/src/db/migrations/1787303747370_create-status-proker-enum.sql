-- Up Migration
CREATE TYPE progress_enum AS ENUM ('belum_mulai', 'berjalan', 'ditunda', 'selesai', 'tidak_berjalan');
-- Down Migration
DROP TYPE IF EXISTS progress_enum;