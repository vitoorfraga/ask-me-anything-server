CREATE TABLE IF NOT EXISTS messages (
  id UUID PRIMARY KEY NOT NULL DEFAULT gen_random_uuid(),
  room_id UUID NOT NULL,
  messages VARCHAR(255),
  reaction_count BIGINT NOT NULL DEFAULT 0,
  answered BOOLEAN NOT NULL DEFAULT false,

  FOREIGN KEY (room_id) REFERENCES rooms(id)
);

---- create above / drop below ----
DROP TABLE IF EXISTS messages;