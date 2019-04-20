-- +micrate Up
ALTER TABLE stories
ADD COLUMN user_id INTEGER NULL,
ADD CONSTRAINT fk_user_story FOREIGN KEY (user_id) REFERENCES users(id);


-- +micrate Down
ALTER TABLE stories
DROP user_id
