-- +goose Up
CREATE TABLE users(
    id varchar(36) PRIMARY KEY,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    name TEXT NOT NULL,
    api_key CHAR(64) UNIQUE NOT NULL DEFAULT  (UUID_TO_BIN(UUID(), true))
);


-- +goose Down

DROP TABLE users;