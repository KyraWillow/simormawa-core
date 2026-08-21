-- Up Migration
CREATE TYPE role_enum as ENUM ('bph', 'bendahara', 'sekretaris', 'kadiv', 'staff', 'admin');
-- Down Migration
DROP TYPE IF EXISTS role_enum;