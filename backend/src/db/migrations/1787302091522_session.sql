-- Up Migration
CREATE TABLE session (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    pengguna_id uuid NOT NULL REFERENCES pengguna(id) ON DELETE CASCADE,
    expired_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now()
);
-- Down Migration
DROP TABLE IF EXISTS session