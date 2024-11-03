-- name: CreateUser :one
INSERT INTO users (id, created_at, updated_at, name)
VALUES(
	$1,
	$2,
	$3,
	$4
	)
	RETURNING *;
-- name: GetUser :one 
Select * FROM users 
where users.name = $1;