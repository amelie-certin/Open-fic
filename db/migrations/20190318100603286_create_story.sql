-- +micrate Up
CREATE TABLE stories (
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR,
  resume VARCHAR,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


-- +micrate Down
DROP TABLE IF EXISTS stories;
