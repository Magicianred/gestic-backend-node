DROP TABLE IF EXISTS FILE;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE FILE (
  FILE_ID UUID DEFAULT uuid_generate_v4 (),
  FILE_TAG VARCHAR(200) NOT NULL,
  FILE_NAME VARCHAR(200) NOT NULL,
  FILE_REF VARCHAR(200) NOT NULL UNIQUE,
  CONSTRAINT PK_FILE PRIMARY KEY (FILE_ID)
);