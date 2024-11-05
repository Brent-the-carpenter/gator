-- +goose up
CREATE TABLE feed_follows(
	id UUID PRIMARY KEY ,
	created_at TIMESTAMP NOT NULL,
	updated_at TIMESTAMP NOT NULL,
	user_id UUID NOT NULL ,
	feed_id UUID NOT NULL,
	CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
	CONSTRAINT fk_feed_id FOREIGN KEY (feed_id) REFERENCES feeds(id) ON DELETE CASCADE, 
	CONSTRAINT unique_user_id_feed_id UNIQUE (user_id , feed_id)
);

-- +goose down
DROP TABLE feed_follows;
